@echo off
setlocal EnableDelayedExpansion

:: was going to system32 :O
cd %tmp%

:: Check admin, WSL has to be run as non admin so it runs before elevation.
openfiles >nul 2>nul
if %errorlevel% neq 0 (
    set /p wsl=Type Y to install WSL, anything else to skip: 
    if /i "!wsl!"=="y" ( 
        if not exist "install-wsl.bat" (
            echo.
            curl -# -o "install-wsl.bat" "https://raw.githubusercontent.com/mitonthegit/random/refs/heads/main/install-wsl.bat"
        )
        if not exist "install-wsl.psm1" (
            echo.
            curl -# -o "install-wsl.psm1" "https://raw.githubusercontent.com/mitonthegit/random/refs/heads/main/install-wsl.psm1"
        )
        start "" "install-wsl.bat"
        timeout /t 2 /nobreak >nul
    )
        powershell -Command "Start-Process '%~f0' -Verb runAs"
        exit /b
    )

:: O&O Shutup 10++ 
set /p xx="Type Y to use O&O Shutup 10++, anything else to skip: "
if /i "%xx%"=="y" (
    echo.
    curl -# -o "ooshutup10.exe" "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe"
    start "" "ooshutup10.exe"
    echo.
)
:: Use Hellzerg Optimizer
set /p gg=Type Y to use Hellzerg Optimizer, anything else to skip: 
if /i "%gg%"=="y" (
    echo.
    curl -L -# -o "optimizer.exe" "https://github.com/hellzerg/optimizer/releases/download/16.7/Optimizer-16.7.exe"
    start "" "optimizer.exe"
    echo.
)
:: DDU
set /p xd=Type Y to use DDU (Display Driver Uninstaller), anything else to skip: 
if /i "%xd%"=="y" (
    echo.
    curl -# -o "ddu.exe" "https://www.wagnardsoft.com/DDU/download/DDU%%20v18.0.8.9_setup.exe"
    start "" "ddu.exe"
    echo.
)

:: Nvidia App
set /p xx=Type Y to install Nvidia app, anything else to skip: 
if /i "%xx%"=="y" (
    echo.
    curl -# -o "nvidia.exe" "https://us.download.nvidia.com/nvapp/client/11.0.1.184/NVIDIA_app_v11.0.1.184.exe"
    start "" "nvidia.exe
    echo.
)

:: Amd Adrenalin Edition
set /p yy=Type Y to install AMD Adrenalin edition, anything else to skip:  
if /i "%yy%"=="y" (
    echo .
    curl -# "https://drivers.amd.com/drivers/installer/24.20/whql/amd-software-adrenalin-edition-24.12.1-minimalsetup-241204_web.exe" --compressed -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Language: en-GB,en;q=0.5" -H "Accept-Encoding: gzip, deflate, br, zstd" -H "Connection: keep-alive" -H "Referer: https://www.amd.com/" -H "Cookie: _abck=4E59648E5D774B7FC03358930A525149~-1~YAAQlbATAifVWtCTAQAAmkBT7g1ma8rV2ekWK2/awtLT/P8Khoyid3hzDCfopOJ0XOECxFaNr1RTIfxnHGey78zzvc9x8PR74LBR/qAaWVwAaXgWKh71nOH/t9bBOGEBtaqL6aePUhvU7Ku4nuS9wIL0yGpPf4UldLAzmPVrCsaZcBKKfq8KQxOsJJHYQ62vB2t6bRC/iiVAJpGvb1lCZvqCYnxjiHBA7jfcyT/sBGzSKzubwLWbKKewz+vDUsrm2FfK+iuSpk/9iXv1J4SaiBfM/Aisp7rCSXBggBFCqWAxpcaqRmTtFhp/G68XayyXe2HAE29R7HvQskrHwGrXAVmoXnQVBxVGuQCp+W0HBFdKpzBonsaaXTc9N6RoyihzV+xCUVyjiL8cFgo13CNFd2aq1T3AHPi9J6TuYGl8Avs8B59jGW4xDUlPFhCF5eL6ucHD3wA=~-1~-1~-1; ak_bmsc=953F8DC3B61308703DFD6A6D5136F7FE~000000000000000000000000000000~YAAQlbATAijVWtCTAQAAmkBT7hqJhAW+L8wsHx2xxJb5bPpAtW7sTjd5fC5eRwjRwxENX2Ox5hERm1X9iDk00xOIFsmOpBdyPLOqAVe+GLHtD0C0b9hoJcW5GbJ7A3lFoB+qqAUSdvOgfnqFFJ5+O7wh96lKbKHjDClFQL7cuBWNQAr/M1YDOgbyJ6Hw4k05miDVqtoMm7reF7ndyqKQzgLYtuYp8v9C4p/Vw5CdBRGHxaIneiiYjnoVP6tO8wI9kI4Uf47Y+hAs7bdbBr7c/aFH8ZkpRjqYd9jM6JVK0THekYAHFHxKhmL5YNFbnGcD69q5z2FkYD4sIuGy9f/XzUkimkISbKpv34s/dO4UBu5hDYvvGJhB5G0YFC2RKefyAb91Muksag4=; bm_sz=780DAD1B92467600F557A1BA302B5419~YAAQFGJkX8jX7ayTAQAA4F187hoaOS7NGxuWPuEgaw+xxD824nyRJVHJEpNdseTE9EurO9C3jfD2QrUksR1qFHpENXMFt/35ltfBcz0UEU495uoE/UpdRxvki4tQaPieEwdJrzTWVlBuzgLea/DqsUwZ+6YSpAkC0Ux3Wjj3Lgi/S44Cne+fxwwyWHb0NZV7qWHIZb8LLkUr77vrxzyJG+kEC09694BGlqLdqImqU7nV5mQpBhL/uhAAFpP6HmyEpekbwfqVJXyMCcEEXZYbx3nJpN9UvAsP0SEnO1G7loX2QIosbf/skiMloHxJjTWH4aBZEm70HmNJQGYAiW3tSxkux112BGHZ1rMwyT1cEpzi0dUBhTbYqC3epiOyX3z0QPecg0AH36IJIezo9mA84tybQpOAVald9cA+QYMSFy0O2JYyeHWTaprmPx0khSqtK845z+wOMrNzYI2wpUyKnh+cPQ==~3683908~3228482; bm_sv=31535E4722A7F1B04AB55FCFE2B66F1F~YAAQFGJkX8fX7ayTAQAA4F187hoCnSA/4+d06ozhZbJ/zubUuYNISKWAKUJy4Lv8Km96MxLeAUpUo5KY+We0ib66dRxkFwavHBsDAdK7iaG6+R7cTCWmpEKMHl6onMc5GInuGNC8SfL1aQXB54iEVLPCBI5MwLFaHNjVmTv0y/eERy9PiYM2uuWc9EHn3reppdKct3sMIx/YgOGNWYwGBwbIWqLFW4ALM78eKSIS3Y7ty/2yG/R72HOn296o~1; AKA_A2=A" -H "Upgrade-Insecure-Requests: 1" -H "Sec-Fetch-Dest: document" -H "Sec-Fetch-Mode: navigate" -H "Sec-Fetch-Site: same-site" -H "Sec-Fetch-User: ?1" -H "Priority: u=0, i" -H "TE: trailers" --output amd.exe
    start "" "amd.exe"
    echo.
)

:: Activate WinRAR
set /p lol=Type Y to activate WinRAR, anything else to skip: 
if /i "%lol%"=="y" (
    echo.
    curl -# -o "rarreg.key" "https://raw.githubusercontent.com/mitonthegit/random/refs/heads/main/rarreg.key"
    move /Y "rarreg.key" "C:\Program Files\WinRAR\rarreg.key"
    if exist "rarreg.key" (
        del /f "rarreg.key"
    )
    echo.
)

:: Office installation
set /p nerd=Type Y to install MS Office, anything else to skip: 
if /i "%nerd%"=="y" (
    echo.
    curl -# -o "OfficeSetup.exe" "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=O365ProPlusRetail&platform=x64&language=en-gb&version=O16GA" > nul
    start "" "OfficeSetup.exe"
    echo.
)

:: Chris Titus Tech Tool
set /p chris=Type Y to use Chris Titus tech tool, anything else to skip: 
if /i "%chris%"=="y" (
    echo.
    powershell -c "iwr -useb https://christitus.com/win|iex"
    echo.
)

:: Install Steelseries Engine 3.20.0 (2016)
set /p sse=Type Y to install Old Steelseries Engine(3.20.0), anything else to skip: 
if /i "%sse%"=="y" (
    echo.
    curl -# -o "steelseries.exe" "https://engine.steelseriescdn.com/SteelSeriesEngine3.20.0Setup.exe"
    start "" "steelseries.exe"
    echo.
)

:: MAS activation
set /p choice=Type Y to activate Windows/Office, anything else to skip: 
if /i "%choice%"=="y" (
    echo.
    powershell -c "irm('https://get.activated.win')|iex"
    echo.
)

:: Ameliorate
set /p input=Type Y to Ameliorate Windows, anything else to skip: 
if /i "%input%"=="y" (
    if not exist "AME_10_Beta.abpx" (
        echo.
        curl -# -o "AME_10_Beta.abpx" "https://download.ameliorated.io/AME%%2010%%20Beta.apbx"
    )
    if not exist "AME_Wizard_Beta.zip" (
        echo.
        curl -# -o "AME_Wizard_Beta.zip" "https://download.ameliorated.io/AME%%20Wizard%%20Beta.zip"
    )
    mkdir AME
    tar -xf "AME_Wizard_Beta.zip" -C AME
    start "" "AME\Ame Wizard Beta.exe"
    echo Please restart script after ameliorating and select no to continue.
    echo Press any key to exit
    pause /nul
    exit /b
)

:: Cleanup
if exist "OfficeSetup.exe" (
    del /f "OfficeSetup.exe"
)
if exist "AME_10_Beta.abpx" (
    del /f "AME_10_Beta.abpx"
)
if exist "AME_Wizard_Beta.zip" (
    del /f "AME_Wizard_Beta.zip"
)
if exist "AME" (
    rd /s /q "AME"
)
if exist "install-wsl.psm1" (
    del /f "install-wsl.psm1"
)
if exist "install-wsl.bat" (
    del /f "install-wsl.bat"
)
if exist "ddu.exe" (
    del /f "ddu.exe"
)
if exist "nvidia.exe" (
    del /f "nvidia.exe"
)
if exist "amd.exe" (
    del /f "amd.exe"
)
if exist "optimizer.exe" (
    del /f "optimizer.exe"
)
if exist "steelseries.exe" (
    del /f "steelseries.exe"
)
if exist "ooshutup10.exe" (
    del /f "ooshutup10.exe"
)

:: Install packages
set /p skull=Type Y to install packages, anything else to skip: 
if /i "%skull%"=="y" (
    set "packages=wireshark obs googlechrome firefox mpv hxd 7zip winrar vscode discord discord-canary docker-desktop sublimetext3 signal gitkraken flameshot imhex spotify systeminformer-nightlybuilds resourcehacker.portable cheatengine steam teamspeak vmwareworkstation vlc tutanota mullvad obsidian notion tailscale python3 qbittorrent librewolf burp-suite-free-edition"
    choco install !packages! -y
)
color 0a
echo.
echo.
echo THANKS FOR USING MICROSOFT VISUAL STUDIOS
timeout /t 4 >nul
exit /b
