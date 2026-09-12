@echo off

git pull

del /q data\gallery-data.json 2>nul

py generate_data.py

pause