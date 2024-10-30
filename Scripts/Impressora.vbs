' Inicio do script
 
Set objSysInfo = CreateObject("ADSystemInfo")
Set WshNetwork = CreateObject("Wscript.Network")

strUserPath = "LDAP://" & objSysInfo.UserName
Set objUser = GetObject(strUserPath)

objMemberOf = objUser.GetEx("MemberOf")
objUserName = objUser.Get("givenName")

For Each strGroup in objMemberOf
strGroupPath = "LDAP://" & strGroup
Set objGroup = GetObject(strGroupPath)
strGroupName = objGroup.CN

Select Case strGroupName

Case "SG - Impressora - Print_MRO_01"
 WshNetwork.AddWindowsPrinterConnection "\\Print_mro\Print_MRO_01"
 
Case "SG - Impressora - Print_MRO_02"
 WshNetwork.AddWindowsPrinterConnection "\\Print_mro\Print_MRO_02"
 
Case "SG - Impressora - Print_MRO_03"
 WshNetwork.AddWindowsPrinterConnection "\\Print_mro\Print_MRO_03"
 
Case "SG - Impressora - Print_MRO_04"
 WshNetwork.AddWindowsPrinterConnection "\\Print_mro\Print_MRO_04"

Case "SG - Impressora - Print_MRO_05"
 WshNetwork.AddWindowsPrinterConnection "\\Print_mro\Print_MRO_05" 
 
Case "SG - Impressora - Print_MRO_06"
 WshNetwork.AddWindowsPrinterConnection "\\Print_mro\Print_MRO_06"
 
End Select
 Next
 
WScript.Quit
' Fim do scrip
