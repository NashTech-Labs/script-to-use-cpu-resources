#!/bin/bash
htop -p 0
sudo apt install stress
stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 10s
