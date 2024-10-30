echo off
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /v AppsUseLightTheme /t reg_Dword /d 1 -f
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t reg_Dword /d 1 -f

reg add HKCU\Software\Microsoft\Office\16.0\Common /v "UI Theme" /t reg_Dword /d 0 -f


rename "C:\Users\danilo.cabral\OneDrive - AeC Centro de Contatos\Pictures\Wallpapers\desktop.jpg" desktop_dark.jpg
rename "C:\Users\danilo.cabral\OneDrive - AeC Centro de Contatos\Pictures\Wallpapers\desktop_light.jpg" desktop.jpg


copy "C:\Users\danilo.cabral\OneDrive - AeC Centro de Contatos\Pictures\Wallpapers\desktop.jpg" C:\Papel_De_Parede

tskill explorer

rename "C:\Users\danilo.cabral\OneDrive - AeC Centro de Contatos\Pictures\Wallpapers\desktop.jpg" desktop_light.jpg
rename "C:\Users\danilo.cabral\OneDrive - AeC Centro de Contatos\Pictures\Wallpapers\desktop_dark.jpg" desktop.jpg