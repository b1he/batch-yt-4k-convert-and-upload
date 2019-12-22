@echo off

rem Extension of videos
set ext=mp4

rem Folder with ffmpeg.exe and youtubeuploader_windows_amd64.exe
set bin=bin

mkdir temp
mkdir temp\converting
mkdir temp\uploading
mkdir completed
mkdir completed\original
mkdir completed\converted

for %%a in (*.%ext%) do (
if not exist "temp\uploading\%%~na.mkv" (
title Converting %%~na
"%bin%\ffmpeg.exe" -hwaccel nvdec -i "%%~na.%ext%" -vf scale=3840:2160:flags=neighbor -c:v hevc_nvenc -b:v 100M -c:a copy "temp\converting\%%~na.mkv" -y
move "temp\converting\%%~na.mkv" "temp\uploading\%%~na.mkv"
)
title Uploading %%~na
"%bin%\youtubeuploader_windows_amd64.exe" -filename "temp\uploading\%%~na.mkv" -title "%%~na" -description "" -privacy "unlisted" -cache "%bin%\request.token" -secrets "%bin%\client_secrets.json"
move "temp\uploading\%%~na.mkv" "completed\converted\%%~na.mkv"
move "%%~na.%ext%" "completed\original\%%~na.%ext%"
)

title Finished
echo Finished
pause
