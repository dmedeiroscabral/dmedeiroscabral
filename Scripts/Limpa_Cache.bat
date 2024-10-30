@ECHO OFF
Title Limpando_Chace_Chrome_IE
mode 15,10
color 78
Echo.
Echo Aguarde...

taskkill /F /IM iexplore.exe /T
cls
Echo.
Echo Aguarde...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
cls
Echo.
Echo Aguarde...
taskkill /F /IM chrome.exe /T
cls
Echo.
Echo Aguarde...
rd "%LOCALAPPDATA%\Google\Chrome" /s /q
cls
Echo.
Echo Finalizado.
EXIT