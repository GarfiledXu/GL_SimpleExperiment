
cls
call .\batchPkg\color.bat 
@echo off

set project_root_dir=%~dp0
set current_script_name=%~nx0
set cmake_dir=%project_root_dir%cmake
set out_dir=%project_root_dir%out


@REM if exist %out_dir%\Debug (
@REM     move  /-Y %out_dir%\Debug %out_dir%\bak
@REM )

@REM if exist %out_dir%\Release (
@REM     move  /-Y %out_dir%\Release %out_dir%\bak
@REM )

if not "%1"=="" if "%1"=="cr" (
    if exist %out_dir%\Debug (
        xcopy %out_dir%\Debug %out_dir%\bak\Debug /y /e
        del /q/s %out_dir%\Debug
        rd /q/s %out_dir%\Debug
    )
    if exist %out_dir%\Release (
        xcopy %out_dir%\Release %o ut_dir%\bak\Release /y /e
        del /q/s %out_dir%\Release
        rd /q/s %out_dir%\Release
    )
)

@REM xcopy   %out_dir%\Debug %out_dir%\bak  /exclude:bak /y  /e /s /t


pushd %cd%
cd %cmake_dir%
if not "%1"=="" if "%1"=="r" (
    echo %G_CO_BLACK_GREEN%standalone run exe%G_CO_CLEAR%
    %out_dir%\Release\gl_cmake_test.exe
) ^
else if "%1"=="cr" (
    call build.bat %1
)




@echo on
