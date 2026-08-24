@echo off

git pull

del /q data\gallery-data.json 2>nul
rd /s /q webpimages 2>nul

py convert_to_webp.py
py generate_data.py

pause