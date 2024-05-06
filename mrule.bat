@echo off 
title ***SISTEMICOS***
chcp 65001 >nul
color 0a
reg add HKCU\Console /v FullScreen /t REG_DWORD /d 1 /f
cls
echo -----------------------------------------M O T I L O N - R U L E---------------------------------------  
echo  ---------------------------------------------         ------------------------------------------------
echo  I     __,_____                              I         I            CHOOSE A DIE OPTION               I
echo  I    / __.==--l  █▓▒▓█▀██▀█▄░░▄█▀██▀█▓▒▓█   I         I----------------------------------------------I 
echo  I   /#(-'        █▓▒░▀▄▄▄▄▄█░░█▄▄▄▄▄▀░▒▓█   I         I 1. Deletes all content of a drive            I 
echo  I   `-'          █▓▓▒░░░░░▒▓░░▓▒░░░░░▒▓▓█   I         I 2. Delete key registry files                 I 
echo  ---------------------------------------------         I 3. Optimize your computer                    I
set /a opcion=(%RANDOM% %% 4) + 1                                  
echo Press any key to pull the trigger                      I 4. Crazy caps lock                           I
echo                                                        ------------------------------------------------

pause           
echo  ---------------------------------------------         ------------------------------------------------ 
echo  ------------- RANDOM NUMBER: %opcion% --------------         I                   CREDITS                     I
echo  ---------------------------------------------         I-----------------------------------------------I
echo                                                        I      YOU HAVE BEEN CONSUMED BY SYSTEMICS      I
echo                                                        ------------------------------------------------
if "%opcion%"=="1" (
    echo Opcion 1
) else if "%opcion%"=="2" (
    echo Opcion 2
) else if "%opcion%"=="3" (
    echo Opcion 3 
)  else if "%opcion%"=="4" (
    echo Opcion 4 
) else (
    echo Opcion no valida. Por favor, ingrese un numero de opcion valido.
)
pause
start www.youtube.com/watch?v=J2XRDVdDkis
pause > nul