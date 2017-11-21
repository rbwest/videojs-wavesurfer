#!/bin/sh

audiowaveform -i long.wav -o long-64.json -z 64
audiowaveform -i long.wav -o long-128.json -z 128
audiowaveform -i long.wav -o long-256.json -z 256
audiowaveform -i long.wav -o long-512.json -z 512
audiowaveform -i long.wav -o long-1024.json -z 1024

python scale-json.py long-64.json
python scale-json.py long-128.json
python scale-json.py long-256.json
python scale-json.py long-512.json
python scale-json.py long-1024.json
