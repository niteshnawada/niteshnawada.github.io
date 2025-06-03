:: ##############################################################
:: # Install Apps Batch Script                                  #
:: ##############################################################
:: # Who can use this?
:: # - Anyone running Windows 10 or newer.
:: # - Users who want an easy way to install multiple Winget apps.
::
:: # When to use?
:: # - When setting up a new Windows system.
:: # - When automating software installation.
::
:: # How to use?
:: # PowerShell:
:: # Run the following command to download & execute from GitHub Gist:
:: # Invoke-WebRequest -Uri "https://gist.githubusercontent.com/your-username/your-gist-id/raw/install_apps.bat" -OutFile "$env:TEMP\install_apps.bat"; Start-Process "$env:TEMP\install_apps.bat" -Wait
::
:: # Command Prompt (CMD):
:: # Run the following command to download & execute from GitHub Gist:
:: # curl -o "%TEMP%\install_apps.bat" "https://gist.githubusercontent.com/your-username/your-gist-id/raw/install_apps.bat" && "%TEMP%\install_apps.bat"
::
:: # Notes:
:: # - If no input file is provided, the script will prompt to use the default list.
:: # - The script ignores blank lines and comments (lines starting with `:: `).
:: # - Supports retries (up to 3 times) for failed installations.
:: ##############################################################

@echo off
setlocal enabledelayedexpansion

:: Check if file name is provided
if "%~1"=="" (
    echo Usage: %0 ^<file-name^>
    echo Expected file format:
    echo --------------------------------------
    echo :: Basic bash tools
    echo Microsoft.WindowsTerminal
    echo Microsoft.PowerShell
    echo bmatzelle.Gow
    echo :: Basic dev tools
    echo 7zip.7zip
    echo Adobe.Acrobat.Reader.64-bit
    echo Git.Git
    echo Microsoft.VisualStudioCode
    echo Postman.Postman
    echo --------------------------------------
    echo No file provided. Do you want to use the default app list? (y/n)
    set /p useDefault=
    if /I "%useDefault%"=="y" goto use_default_list
    echo Exiting...
    exit /b
)

:: Read application list from provided file while ignoring comments (`:: `)
set count=0
for /f "tokens=* delims=" %%A in (%1) do (
    if not "%%A"=="" if /I not "%%A"==":: " (
        set /a count+=1
        set "apps[!count!]=%%A"
    )
)
goto start_install

:use_default_list
:: Define a default application list

:: Basic bash tools
set "apps[1]=Microsoft.WindowsTerminal"
set "apps[2]=Microsoft.PowerShell"
set "apps[3]=bmatzelle.Gow"

:: Basic dev tools
set "apps[4]=7zip.7zip"
set "apps[5]=Adobe.Acrobat.Reader.64-bit"
set "apps[6]=Git.Git"
set "apps[7]=Microsoft.VisualStudioCode"
set "apps[8]=Postman.Postman"

:: Java tools
set "apps[9]=Oracle.JavaRuntimeEnvironment 8.0.281"
set "apps[10]=JetBrains.IntelliJIDEA.Ultimate"

:: NodeJs tools
set "apps[11]=CoreyButler.NVMforWindows"

:: Cloud tools
set "apps[12]=Amazon.AWSCLI"
set "apps[13]=Hashicorp.Terraform"

:: Other dev tools
set "apps[14]=WinDirStat.WinDirStat"
set "apps[15]=WinMerge.WinMerge"
set "apps[16]=voidtools.Everything"
set "apps[17]=Oracle.VirtualBox"

set count=17

:start_install
:: Install applications
for /L %%i in (1,1,%count%) do (
    set attempts=0
    echo Installing !apps[%%i]! (%%i/%count%)

    :install_loop
    winget install -e --id "!apps[%%i]!"
    if %errorlevel%==0 (
        echo Successfully installed !apps[%%i]!
    ) else (
        set /a attempts+=1
        if !attempts! lss 3 (
            echo Installation of !apps[%%i]! failed. Try again? (y/n)
            set /p retry=
            if /I "!retry!"=="y" goto install_loop
        )
        echo Skipping !apps[%%i]! after !attempts! failed attempts.
    )
    echo --------------------------------------
)
echo All installations completed.
pause
