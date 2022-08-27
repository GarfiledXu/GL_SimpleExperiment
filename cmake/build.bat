
@echo off

echo %G_CO_BLACK_YELLOW%enter build.bat%G_CO_CLEAR%
setlocal
set current_script_dir=%~dp0
set current_script_name=%~nx0
set cmake_build_dir=%current_script_dir%build
set cmake_source_dir=%current_script_dir%

set out_dir=%current_script_dir%out
set out_history=%out_dir%bak


echo %G_CO_BLACK_GREEN_2%cmake_build_dir=%G_CO_BLACK_GREEN%%cmake_build_dir%%G_CO_CLEAR%
echo %G_CO_BLACK_GREEN_2%cmake_source_dir=%G_CO_BLACK_GREEN%%cmake_source_dir%%G_CO_CLEAR%
echo %G_CO_BLACK_GREEN_2%current_script_dir=%G_CO_BLACK_GREEN%%current_script_dir%%G_CO_CLEAR%

if not exist %out_dir% (
    mkdir %out_dir%
    mkdir %out_history%
)

if not exist %cmake_build_dir% (
    mkdir %cmake_build_dir%
) ^
else (
    del /s/q %cmake_build_dir% & rd /s/q %cmake_build_dir%
)
    





cmake -B %cmake_build_dir% -S %current_script_dir% -G "Visual Studio 16 2019" -A x64 &  ^
cmake --build %cmake_build_dir%  --config Release 
endlocal

echo %G_CO_BLACK_YELLOW%end build.bat%G_CO_CLEAR%
echo %G_CO_BLACK_GREEN%get procedure%G_CO_CLEAR%
if not "%1"=="" if "%1"=="cr" (
    echo %G_CO_BLACK_GREEN%run procedure%G_CO_CLEAR%
    %out_dir%\Release\gl_cmake_test.exe
)
