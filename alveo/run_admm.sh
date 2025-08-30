#!/bin/bash

# Path to the file that stores the last used N
N_FILE="last_n.txt"

# Default starting value
START_N=4096
MAX_N=32768

# Check if the N file exists; if not, initialize it
if [ ! -f "$N_FILE" ]; then
    echo $START_N > "$N_FILE"
fi

# Read the current N value
N=$(cat "$N_FILE")

# Check if N exceeds MAX_N
if [ "$N" -gt "$MAX_N" ]; then
    echo "Maximum N reached ($MAX_N). Exiting."
    exit 0
fi

echo "Running with N=$N"

# Step 1: Run the Python script to generate .npy files
python3 src/generate_matrices.py $N
if [ $? -ne 0 ]; then
    echo "❌ Python script failed."
    exit 1
fi

# Step 2: Run the ADMM binary with absolute path to xclbin
XCLBIN_PATH="$(pwd)/bitstreams/admm-hbm-nocache.xclbin"
./admm "$XCLBIN_PATH"
if [ $? -ne 0 ]; then
    echo "❌ ADMM binary crashed or failed."
    exit 1
fi

# Step 3: Double N and save it for next time (up to MAX)
NEXT_N=$((N * 2))
if [ "$NEXT_N" -le "$MAX_N" ]; then
    echo $NEXT_N > "$N_FILE"
else
    echo $MAX_N > "$N_FILE"
fi

echo "✅ Next run will use N=$(cat $N_FILE)"
