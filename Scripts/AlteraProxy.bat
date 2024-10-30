@echo off

Title ALTERACAO DE PROXY
:VOLTA
mode 45,18
COLOR 1F
cls
echo.
echo=========================================
echo========== ALTERACAO DE PROXY ===========
echo============== AeC Mossoro ==============
echo=========================================
echo.
echo.
echo     1 - PROXY CLARO BRASIL (10.18.4.20)
echo.
echo     2 - PROXY AEC (192.168.239.11)
echo.
echo     3 - SEM PROXY - USO EM HOME OFFICE
echo.
set opcao= "Em Branco"
echo.
set /p opcao= Escolha a opcao desejada: 

if %opcao% EQU 1 GOTO PROXYCLARO

if %opcao% EQU 2 GOTO PROXYAEC

if %opcao% EQU 3 GOTO SEMPROXY

COLOR 04
mode 55,10
cls
Echo.
Echo.
Echo OPCAO %opcao% INVALIDA.
Echo.
Echo FAVOR PRESSIONE QUALQUER TECLA PARA TENTAR NOVAMENTE...
PAUSE>NUL
COLOR F
GOTO VOLTA

:PROXYCLARO
cls
mode 45,18
COLOR 1F
echo.
echo=========================================
echo========== ALTERACAO DE PROXY ===========
echo============== AeC Mossoro ==============
echo=========================================
echo.
echo     1 - PROXY CLARO BRASIL (10.18.4.20)
echo.
echo  A Alteracao De Proxy Vai Fecha O 
echo  Internet Explorer
echo.
echo  Deseja continuar?
echo.
echo     1 - SIM
echo.
echo     2 - NAO
set opcao= "Em Branco"
echo.
set /p opcao= Escolha a opcao desejada: 
if %opcao% EQU 1 (
cls
mode 15,10
color 70
Echo.
Echo Aguarde...
taskkill /F /IM iexplore.exe /T >NUL
cls
Echo.
Echo Aguarde...
timeout 3 >NUL
regedit.exe /s C:\Desktop_Atalhos\reg_IE1011_Claro.reg
Echo.
timeout 3 >NUL 
Echo CONCLUIDO!
timeout 1 >NUL 
start iexplore.exe
cls
exit )
GOTO VOLTA

:PROXYAEC
cls
mode 45,18
COLOR 1F
echo.
echo=========================================
echo========== ALTERACAO DE PROXY ===========
echo============== AeC Mossoro ==============
echo=========================================
echo.
echo     2 - PROXY AEC (192.168.239.11)
echo.
echo  A Alteracao De Proxy Vai Fecha O 
echo  Internet Explorer
echo.
echo  Deseja continuar?
echo.
echo     1 - SIM
echo.
echo     2 - NAO
set opcao= "Em Branco"
echo.
set /p opcao= Escolha a opcao desejada: 
if %opcao% EQU 1 (
cls
mode 15,10
color 70
Echo.
Echo Aguarde...
taskkill /F /IM iexplore.exe /T >NUL
cls
Echo.
Echo Aguarde...
timeout 3 >NUL
regedit.exe /s C:\Desktop_Atalhos\reg_IE1011_AeC.reg
Echo.
timeout 3 >NUL 
Echo CONCLUIDO!
timeout 1 >NUL 
start iexplore.exe
cls
exit )
GOTO VOLTA

:SEMPROXY
cls
mode 45,18
COLOR 1F
echo.
echo=========================================
echo========== ALTERACAO DE PROXY ===========
echo============== AeC Mossoro ==============
echo=========================================
echo.
echo     3 - SEM PROXY - USO EM HOME OFFICE
echo.
echo  A Alteracao De Proxy Vai Fecha O 
echo  Internet Explorer
echo.
echo  Deseja continuar?
echo.
echo     1 - SIM
echo.
echo     2 - NAO
set opcao= "Em Branco"
echo.
set /p opcao= Escolha a opcao desejada: 
if %opcao% EQU 1 (
cls
mode 15,10
color 70
Echo.
Echo Aguarde...
taskkill /F /IM iexplore.exe /T >NUL
cls
Echo.
Echo Aguarde...
timeout 3 >NUL
regedit.exe /s C:\Desktop_Atalhos\reg_IE1011_SemProxy.reg
Echo.
timeout 3 >NUL 
Echo CONCLUIDO!
timeout 1 >NUL 
start iexplore.exe
cls
exit )
GOTO VOLTA
exit