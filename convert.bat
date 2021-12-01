@echo off
title Simple M3U8 to MP4 Converter @Michal2SAB

:Check
    WHERE >nul 2>nul ffmpeg
        if %ERRORLEVEL% NEQ 0 (
            echo Error: You need to install ffmpeg before you run this program. Make sure it's added to PATH.
        ) else (
            goto :Output
        )

:Failure
    WHERE >nul 2>nul powershell
        if %ERRORLEVEL% NEQ 0 (
            echo Output name cannot contain any spaces, use - symbol to separate if you need to.
        ) else (
            powershell write-host -fore Red Error: Output name cannot contain any spaces, use - symbol to separate if you need to.
        )
        echo.
        goto :Output

:Output
    set /p vid="Output name: "
    echo.
    if not "%vid%"=="%vid: =%" goto :Failure

set /p playlist="Playlist Link: "
ffmpeg -protocol_whitelist file,http,https,tcp,tls,crypto -i %playlist% -c copy %vid%.mp4
pause
