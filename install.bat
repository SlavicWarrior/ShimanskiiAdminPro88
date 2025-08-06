@echo off
echo ========================================
echo ShimanskiiAdminPro - Instalacion
echo ========================================
echo.

echo Verificando Node.js...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js no esta instalado.
    echo Por favor, instala Node.js desde https://nodejs.org/
    pause
    exit /b 1
)

echo Node.js encontrado.
echo.

echo Instalando dependencias...
npm install
if %errorlevel% neq 0 (
    echo ERROR: Error al instalar dependencias.
    pause
    exit /b 1
)

echo.
echo ========================================
echo Instalacion completada exitosamente!
echo ========================================
echo.
echo Para ejecutar la aplicacion en modo desarrollo:
echo npm run electron-dev
echo.
echo Para construir la aplicacion:
echo npm run electron-pack
echo.
pause
