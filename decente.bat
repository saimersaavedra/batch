@echo off 
title ***SISTEMICOS***
chcp 65001 >nul

:menu
cls
color f0
echo -----------------------------------------------------
echo ---------------- S I S T E M I C O S ----------------
echo - 1. Cifrar archivo
echo - 2. Descrifrar archivo  
echo - 3. Salir 
echo -----------------------------------------------------

set /p opcion=Ingrese el número de opcion: 

if "%opcion%"=="1" (
    goto menu_cifrar 
) else if "%opcion%"=="2" (
    goto descifrar
) else if "%opcion%"=="3" (
    echo Saliendo..
    pause > nul 
    exit /b
) else (
    echo Opción no válida. Por favor, ingrese un número de opción válido.
    pause
    goto menu
)

:menu_cifrar 
cls
color 0a
echo ---------------- E L I G E  F O R M A T O ---------------- 
echo 1. PDF.
echo 2. JPG.
echo 3. PNG.
echo 4. ZIP.
echo 5. Dll.
echo 6. BASE16 O HEX.
echo 7. BASE64.
echo 8. Menu principal
echo -----------------------------------------------------------
set /p for_cifrar=Ingrese el número de opción:

if "%for_cifrar%"=="8" (
    goto menu
)
set /p archivo=Ingrese el nombre del archivo con la extensión (ejemplo.txt): 
set "nombre=%archivo:~0,-4%"
echo El archivo es: %archivo%

if "%for_cifrar%"=="1" (
    certutil -encode %archivo% %nombre%.pdf 
    echo Cifrado terminado..
) else if "%for_cifrar%"=="2" (
    certutil -encode %archivo% %nombre%.png
    echo Cifrado terminado..
) else if "%for_cifrar%"=="3" (
    certutil -encode %archivo% %nombre%.png
    echo Cifrado terminado..
) else if "%for_cifrar%"=="4" (
    certutil -encode %archivo% %nombre%.jpg
    echo Cifrado terminado..
) else if "%for_cifrar%"=="5" (
    certutil -encode %archivo% %nombre%.dll
    echo Cifrado terminado..
) else if "%for_cifrar%"=="6" (
    certutil -f -encodehex %archivo% %nombre%.hex
    echo Cifrado terminado..
) else if "%for_cifrar%"=="7" (
    certutil -encode %archivo% %nombre%"64".txt
    echo Cifrado terminado..
) else (
    echo Opción no válida. Por favor, ingrese un número de opción válido.
    pause
    goto menu_cifrar
)
pause 
goto menu


:descifrar
cls
color 0b
echo --------------- D E S C I F R A R  A R C H I V O ---------------
set /p archivo_descifrar=Ingrese el nombre del archivo cifrado con la extensión (ejemplo.pdf):
set "nombre_descifrar=%archivo_descifrar:~0,-4%"
echo El archivo cifrado es: %archivo_descifrar%
echo ---------------- E L I G E  F O R M A T O ---------------- 
echo 1. PDF.
echo 2. JPG.
echo 3. PNG.
echo 4. ZIP.
echo 5. Dll.
echo 6. TXT.
echo 7. Menu principal
echo -----------------------------------------------------------
set /p for_cifrar=Ingrese el número de opción:

if "%for_cifrar%"=="7" (
    goto menu
)

if "%for_cifrar%"=="1" (
    certutil -decode %archivo_descifrar% %nombre_descifrar%_descifrado.pdf
    echo Cifrado terminado..
) else if "%for_cifrar%"=="2" (
    certutil -decode %archivo_descifrar% %nombre_descifrar%_descifrado.jpg
    echo Cifrado terminado..
) else if "%for_cifrar%"=="3" (
    certutil -decode %archivo_descifrar% %nombre_descifrar%_descifrado.png
    echo Cifrado terminado..
) else if "%for_cifrar%"=="4" (
    certutil -decode %archivo_descifrar% %nombre_descifrar%_descifrado.zip
    echo Cifrado terminado..
) else if "%for_cifrar%"=="5" (
    certutil -decode %archivo_descifrar% %nombre_descifrar%_descifrado.dll
    echo Cifrado terminado..
) else if "%for_cifrar%"=="6" (
    certutil -decode %archivo_descifrar% %nombre_descifrar%_descifrado.txt
    echo Cifrado terminado..
) else (
    echo Opción no válida. Por favor, ingrese un número de opción válido.
    pause
    goto menu_cifrar
)
pause 
goto menu
pause
goto menu