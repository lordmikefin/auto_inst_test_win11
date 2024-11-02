::C:\Windows\SysWOW64\cmd.exe
@echo off

:: Copyright (c) 2024, Mikko Niemelä a.k.a. Lord Mike (lordmike@iki.fi)
:: 
:: License of this script file:
::   MIT License
:: 
:: License is available online:
::   https://github.com/lordmikefin/auto_inst_test_win11/blob/main/LICENSE
:: 
:: Latest version of this script file:
::   https://github.com/lordmikefin/auto_inst_test_win11/blob/master/inst_test.bat

:: inst_test.bat
:: Testing installing applications in Windows 11
:: Download and install.
::  - Git
::  - Python

SET CURRENT_SCRIPT_VER=0.0.1
SET CURRENT_SCRIPT_DATE=2024-11-02
SET CURRENT_SCRIPT=inst_test.bat
echo CURRENT_SCRIPT_VER: %CURRENT_SCRIPT_VER% (%CURRENT_SCRIPT_DATE%)

:: Testing how to disable UAC and other stops for installing multiple apps at once.
:: My current windows (10) script does not work:
::   https://github.com/lordmikefin/LMAutoSetBotWin/blob/master/init.bat


:: Create directory for Installer and install path.
SET PATH_TOY_BOX=C:\LM_ToyBox\
SET PATH_INSTALLERS=%PATH_TOY_BOX%temp

SET PATH_APPS=C:\Program Files
SET PATH_APP_GIT=%PATH_APPS%\Git
SET PATH_APP_PY37=%PATH_APPS%\Python37


mkdir "%PATH_TOY_BOX%"
mkdir "%PATH_INSTALLERS%"
mkdir "%PATH_APPS%"
mkdir "%PATH_APP_GIT%"
mkdir "%PATH_APP_PY37%"



:: Download Git into temp folder
::   https://git-scm.com/download/win
::   
SET FILE_GIT=Git-2.47.0.2-64-bit.exe
SET URL_GIT=https://github.com/git-for-windows/git/releases/download/v2.47.0.windows.2/%FILE_GIT%
echo URL_GIT: %URL_GIT%

:: Download Python into temp folder
::   https://www.python.org/downloads/windows/
SET FILE_PY37=python-3.7.4-amd64.exe
SET URL_PY37=https://www.python.org/ftp/python/3.7.4/%FILE_PY37%
echo URL_PY37: %URL_PY37%




:: TODO: Download files

echo.
echo Now I will run my script 'init.ps1'.
pause
::PowerShell -File init.ps1

:: NOTE: Running 'init.ps1' will cause error:

::File C:\git\auto_inst_test_win11\init.ps1 cannot be loaded because running scripts is disabled on this system. For more
:: information, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.
::    + CategoryInfo          : SecurityError: (:) [], ParentContainsErrorRecordException
::    + FullyQualifiedErrorId : UnauthorizedAccess

:: https://stackoverflow.com/questions/2035193/how-to-run-a-powershell-script
PowerShell -executionpolicy bypass -File init.ps1




:: TODO: Do installing :)


echo.
echo End of script '%CURRENT_SCRIPT%'
