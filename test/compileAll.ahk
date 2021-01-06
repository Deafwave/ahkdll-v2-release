; TODO: Clean up
scriptName := "testFunc"

scriptDir := A_ScriptDir "\"
outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

Ahk2ExePath := compilerDir "Ahk2Exe.exe"
Ahk2ExeScript := compilerDir "Ahk2Exe.ahk"
inScript := scriptDir scriptName ".ahk"
outScript := scriptDir "compiled\" scriptName ".exe"
binToUse := x64w "AutoHotkey.exe"

RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /bin " binToUse)

;;;;;;;;;
;;;;;;;;;

scriptName := "testFuncCompress"

scriptDir := A_ScriptDir "\"
outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

Ahk2ExePath := compilerDir "Ahk2Exe.exe"
Ahk2ExeScript := compilerDir "Ahk2Exe.ahk" ; This necessary?
inScript := scriptDir scriptName ".ahk"
outScript := scriptDir "compiled\" scriptName ".exe"
binToUse := x64w "AutoHotkey.exe"
compress := 1

RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /bin " binToUse " /compress " compress)

;;;;;;;;;
;;;;;;;;;

scriptName := "testFuncEncrypt"

scriptDir := A_ScriptDir "\"
outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

Ahk2ExePath := compilerDir "Ahk2Exe.exe"
Ahk2ExeScript := compilerDir "Ahk2Exe.ahk" ; This necessary?
inScript := scriptDir scriptName ".ahk"
outScript := scriptDir "compiled\" scriptName ".exe"
binToUse := x64w "AutoHotkey.exe"
compress := 1

RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /NoDecompile /bin " binToUse " /compress " compress)

;;;;;;;;;
;;;;;;;;;

scriptName := "testInclude"

scriptDir := A_ScriptDir "\"
outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

Ahk2ExePath := compilerDir "Ahk2Exe.exe"
Ahk2ExeScript := compilerDir "Ahk2Exe.ahk"
inScript := scriptDir scriptName ".ahk"
outScript := scriptDir "compiled\" scriptName ".exe"
binToUse := x64w "AutoHotkey.exe"
compress := 1

RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /bin " binToUse " /compress " compress)