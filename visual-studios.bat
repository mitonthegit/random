@echo off
setlocal EnableDelayedExpansion

:: Ensure admin
openfiles >nul 2>nul
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: Activate winrar
set /p lol=Type Y to activate WinRAR, anything else to skip: 
if /i "%lol%"=="y" (
    echo.
    curl -# -o "rarreg.key" "https://raw.githubusercontent.com/mitonthegit/random/refs/heads/main/rarreg.key"
    move /Y "rarreg.key" "C:\Program Files\WinRAR\rarreg.key"
    if exist "rarreg.key" (
        del /f "rarreg.key"
    )
)

:: Office installation
set /p nerd=Type Y to install MS Office, anything else to skip: 
if /i "%nerd%"=="y" (
    echo.
    curl -# -o "OfficeSetup.exe" "https://c2rsetup.officeapps.live.com/c2r/download.aspx?ProductreleaseID=O365ProPlusRetail&platform=x64&language=en-gb&version=O16GA" > nul
    start "" "OfficeSetup.exe"
)

:: Chris Titus Tech Tool
set /p chris=Type Y to use Chris Titus tech tool, anything else to skip: 
if /i "%chris%"=="y" (
    echo.
    powershell -c "iwr -useb https://christitus.com/win|iex"
)

:: MAS activation
set /p choice=Type Y to activate Windows/Office, anything else to skip: 
if /i "%choice%"=="y" (
    echo.
    powershell -c "irm('https://get.activated.win')|iex"
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

:: Install WSL
set /p wsl=Type Y to install WSL, anything else to skip: 
if /i "%wsl%"=="y" (
    if not exist "install-wsl.bat" (
        echo.
        curl -# -o "install-wsl.bat" "https://raw.githubusercontent.com/mitonthegit/random/refs/heads/main/install-wsl.bat"
    )
    if not exist "install-wsl.psm1" (
        echo.
        curl -# -o "install-wsl.psm1" "https://raw.githubusercontent.com/mitonthegit/random/refs/heads/main/install-wsl.psm1"
    )
    start "" "install-wsl.bat"
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

:: Install packages
set /p skull=Type Y to install packages, anything else to skip: 
if /i "%skull%"=="y" (
    set "packages=wireshark obs googlechrome firefox mpv hxd 7zip winrar discord discord-canary docker-desktop sublimetext3 signal gitkraken flameshot imhex spotify systeminformer-nightlybuilds resourcehacker.portable cheatengine steam teamspeak vmwareworkstation vlc tutanota mullvad obsidian notion tailscale python3 qbittorrent librewolf burp-suite-free-edition"
    choco install !packages! -y
)
