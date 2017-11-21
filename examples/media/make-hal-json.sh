#!/bin/sh

audiowaveform -i hal.wav -o hal-64.json -z 64
audiowaveform -i hal.wav -o hal-128.json -z 128
audiowaveform -i hal.wav -o hal-256.json -z 256
audiowaveform -i hal.wav -o hal-512.json -z 512
audiowaveform -i hal.wav -o hal-1024.json -z 1024

python scale-json.py hal-64.json
python scale-json.py hal-128.json
python scale-json.py hal-256.json
python scale-json.py hal-512.json
python scale-json.py hal-1024.json
