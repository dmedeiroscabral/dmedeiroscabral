Set oShell = CreateObject ("Wscript.Shell")
Dim strArgs
strArgs = "cmd /c disable_proxy.cmd"
oShell.Run strArgs, 0, false