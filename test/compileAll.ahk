; ; TODO: Clean up if this is going to be PR'd, this is extremely messy for quick and dirty testing

; scriptName := "testFunc"

; scriptDir := A_ScriptDir "\"
; outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
; compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
; x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

; Ahk2ExePath := compilerDir "Ahk2Exe.exe"
; Ahk2ExeScript := compilerDir "Ahk2Exe.ahk"
; inScript := scriptDir scriptName ".ahk"
; outScript := scriptDir "compiled\" scriptName ".exe"
; binToUse := x64w "AutoHotkey.exe"

; RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /bin " binToUse)

; ;;;;;;;;;
; ;;;;;;;;;

; scriptName := "testFuncCompress"

; scriptDir := A_ScriptDir "\"
; outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
; compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
; x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

; Ahk2ExePath := compilerDir "Ahk2Exe.exe"
; Ahk2ExeScript := compilerDir "Ahk2Exe.ahk" ; This necessary?
; inScript := scriptDir scriptName ".ahk"
; outScript := scriptDir "compiled\" scriptName ".exe"
; binToUse := x64w "AutoHotkey.exe"
; compress := 1

; RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /bin " binToUse " /compress " compress)

;;;;;;;;;
;;;;;;;;;

scriptName := "testTwoIncludes"

scriptDir := A_ScriptDir "\"
outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

Ahk2ExePath := compilerDir "Ahk2Exe.exe"
Ahk2ExeScript := compilerDir "Ahk2Exe.ahk" ; This necessary?
inScript := scriptDir scriptName ".ahk"
outScript := scriptDir "compiled\" scriptName ".exe"
binToUse := x64w "AutoHotkey.exe" ; using compilerDir "CustomBin.exe" caused an error
customBinToUse := compilerDir "AutoHotkey.exe"
compress := 1

RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /NoDecompile /pass oCKArYwIpx /bin " binToUse " /compress " compress)

scriptName := "testTwoIncludeAgains"

scriptDir := A_ScriptDir "\"
outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

Ahk2ExePath := compilerDir "Ahk2Exe.exe"
Ahk2ExeScript := compilerDir "Ahk2Exe.ahk" ; This necessary?
inScript := scriptDir scriptName ".ahk"
outScript := scriptDir "compiled\" scriptName ".exe"
binToUse := x64w "AutoHotkey.exe" ; using compilerDir "CustomBin.exe" caused an error
customBinToUse := compilerDir "AutoHotkey.exe"
compress := 1

RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /NoDecompile /pass oCKArYwIpx /bin " binToUse " /compress " compress)

;

; scriptName := "testFuncEncrypt"

; scriptDir := A_ScriptDir "\"
; outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
; compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
; x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

; Ahk2ExePath := compilerDir "Ahk2Exe.exe"
; Ahk2ExeScript := compilerDir "Ahk2Exe.ahk" ; This necessary?
; inScript := scriptDir scriptName ".ahk"
; outScript := scriptDir "compiled\" scriptName "_CorrectPass.exe"
; binToUse := x64w "AutoHotkey.exe" ; using compilerDir "CustomBin.exe" caused an error
; customBinToUse := compilerDir "AutoHotkey.exe"
; compress := 1

; RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /NoDecompile /pass oCKArYwIpx /bin " binToUse " /compress " compress)

;

; scriptName := "testFuncEncrypt"

; scriptDir := A_ScriptDir "\"
; outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
; compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
; x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

; Ahk2ExePath := compilerDir "Ahk2Exe.exe"
; Ahk2ExeScript := compilerDir "Ahk2Exe.ahk" ; This necessary?
; inScript := scriptDir scriptName ".ahk"
; outScript := scriptDir "compiled\" scriptName "_WrongPass.exe"
; binToUse := x64w "AutoHotkey.exe" ; using compilerDir "CustomBin.exe" caused an error
; customBinToUse := compilerDir "AutoHotkey.exe"
; compress := 1

; RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /NoDecompile /pass asdasd /bin " binToUse " /compress " compress)

;

; scriptName := "testFuncEncrypt"

; scriptDir := A_ScriptDir "\"
; outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
; compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
; x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

; Ahk2ExePath := compilerDir "Ahk2Exe.exe"
; Ahk2ExeScript := compilerDir "Ahk2Exe.ahk" ; This necessary?
; inScript := scriptDir scriptName ".ahk"
; outScript := scriptDir "compiled\" scriptName "_CustomBin.exe"
; binToUse := x64w "AutoHotkey.exe" ; using compilerDir "CustomBin.exe" caused an error
; customBinToUse := compilerDir "AutoHotkey.exe"
; compress := 1

; RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /NoDecompile /pass oCKArYwIpx /bin " customBinToUse " /compress " compress)

;;;;;;;;;
;;;;;;;;;

; scriptName := "testInclude"

; scriptDir := A_ScriptDir "\"
; outsideDir := SubStr(A_ScriptDir, 1, StrLen(A_ScriptDir)-5) ; Lazy to regex the last directory off
; compilerDir := outsideDir "\Compiler\" ; Lazy to regex the last directory off
; x64w := outsideDir "\x64w\" ; Lazy to regex the last directory off

; Ahk2ExePath := compilerDir "Ahk2Exe.exe"
; Ahk2ExeScript := compilerDir "Ahk2Exe.ahk"
; inScript := scriptDir scriptName ".ahk"
; outScript := scriptDir "compiled\" scriptName ".exe"
; binToUse := x64w "AutoHotkey.exe"
; compress := 1

; RunWait(Ahk2ExePath " " Ahk2ExeScript " /in " inScript " /out " outScript " /bin " binToUse " /compress " compress)