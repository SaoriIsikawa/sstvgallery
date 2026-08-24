@echo off

del /q data\gallery-data.json 2>nul
rd /s /q webpimages 2>nul

tidy.exe -quiet -indent --indent-spaces 2 -wrap 0 -utf8 -modify index.html
py convert_to_webp.py
py generate_data.py

pause