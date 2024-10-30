Option Explicit

auto_excel

sub auto_excel()

Dim expp
Dim Elpp
Dim caminhoArquivo, objShell

'Set objShell = CreateObject(“Wscript.Shell”)

'caminhoPastaAtual = objShell.CurrentDirectory

Dim sCurPath
sCurPath = CreateObject("Scripting.FileSystemObject").GetAbsolutePathName(".")


set expp = CreateObject("Excel.Application")
expp.visible = TRUE
set Elpp = expp.Workbooks.Open(sCurPath  & "\Hominum.xlsb",0 ,FALSE,,"1712")
    'EXPP.RUN "RodarTudo"
    'EXPP.QUIT	

End sub