@echo off 
title ***SISTEMICOS***
chcp 65001 >nul
color f0
:: cifrar y descifrar archivos

:menu
echo -----------------------------------------------------
echo ---------------- S I S T E M I C O S ----------------
echo - 1. Cifrar archivo
echo - 2. Descrifrar archivo  
echo - 7. Salir 
echo -----------------------------------------------------

set /p opcion=Ingrese el número de opcion: 

if "%opcion%"=="1" (
    pause
    goto cifrar
) else if "%opcion%"=="2" (
    echo Descrifrado
    pause 
    goto descifrar 
) else if "%opcion%"=="7" (
    echo Saliendo..
    pause > nul 
     exit /b
) else (
    echo Opcion no valida. Por favor, ingrese un numero de opcion valido.
    pause
    goto menu
)

:cifrar 
:: certutil -f -encodehex [nombre de archivo] [nombre archivo .hex]
cls
set /p archivo=Ingrese el nombre del archivo con la extensión (ejemplo.txt): 
certutil -f -encodehex %archivo% ejemplo.hex 
pause
goto menu 

:descifrar
cls 
set /p archivo=Ingrese el nombre del archivo con la extensión (ejemplo.hex): 
certutil -f -decodehex %archivo% ejemplo.txt
pause
goto menu 

:: directorio biblioteca --> 0. descargas 1. documento 2. imagenes 3. videos 4. musica  
:: if en otra carpeta ?  "/" [carpeta] 2 "/" [nombre archivo con la extension]
:: descomprimir o comprimir 

pause > nul 