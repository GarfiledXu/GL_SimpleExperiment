@Echo off

@REM set global variable
Set _fBlack=[30m
Set _bBlack=[40m
Set _fRed=[31m
Set _bRed=[41m
Set _fGreen=[32m
Set _bGreen=[42m
Set _fYellow=[33m
Set _bYellow=[43m
Set _fBlue=[34m
Set _bBlue=[44m
Set _fMag=[35m
Set _bMag=[45m
Set _fCyan=[36m
Set _bCyan=[46m
Set _fLGray=[37m
Set _bLGray=[47m
Set _fDGray=[90m
Set _bDGray=[100m
Set _fBRed=[91m
Set _bBRed=[101m
Set _fBGreen=[92m
Set _bBGreen=[102m
Set _fBYellow=[93m
Set _bBYellow=[103m
Set _fBBlue=[94m
Set _bBBlue=[104m
Set _fBMag=[95m
Set _bBMag=[105m
Set _fBCyan=[96m
Set _bBCyan=[106m
Set _fBWhite=[97m
Set _bBWhite=[107m
Set _RESET=[0m

set G_CO_CLEAR=%_RESET%
set G_CO_WHITE_BLACK=%_fBlack%%_bBWhite%


Set G_CO_BLACK_GREEN=%_fBlack%%_bGreen%
Set G_CO_BLACK_GREEN_2=%_fBlack%%_bBGreen%
Set G_CO_BLACK_YELLOW=%_fBlack%%_bYellow%
Set G_CO_BLACK_YELLOW_2=%_fBlack%%_bBYellow%

Set G_CO_BLACK_GREEN_2=%_fBlack%%_bBGreen%
Set G_CO_BLACK_GREEN_2=%_fBlack%%_bBGreen%
Set G_CO_BLACK_GREEN_2=%_fBlack%%_bBGreen%
Set G_CO_BLACK_GREEN_2=%_fBlack%%_bBGreen%

if "%1"=="" (
    echo %G_CO_BLACK_GREEN%load color.bat%G_CO_CLEAR%
)  ^
else (
    if "%1"=="list" (
        echo %G_CO_BLACK_GREEN%G_CO_BLACK_GREEN%G_CO_CLEAR%
        Echo %G_CO_BLACK_GREEN_2%G_CO_BLACK_GREEN_2%G_CO_CLEAR%

        echo %G_CO_BLACK_YELLOW%G_CO_BLACK_YELLOW%G_CO_CLEAR%
        Echo %G_CO_BLACK_YELLOW_2%G_CO_BLACK_YELLOW_2%G_CO_CLEAR%
    )
)


echo %G_CO_CLEAR%CLEAR!

@Echo on