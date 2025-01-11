#!/bin/bash

# Define the virtual environment directory
VENV_DIR="venv"

# Create a virtual environment
python3 -m venv $VENV_DIR

# Activate the virtual environment
source $VENV_DIR/bin/activate

# Install the required packages
pip install -r requirements.txt

echo "Virtual environment setup complete."

uvicorn main:app --host 0.0.0.0 --port 8000 --reload