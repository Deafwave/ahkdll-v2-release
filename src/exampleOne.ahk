; src/exampleOne.ahk

defaultObject := {
    testVar: "test failed"
}

CritObj := CriticalObject(defaultObject)

;;;;;;;;

; Non-compiled: MessageBox with "Manipulated CritObj String"
; Compiled: Script File Not Found exampleTwo.ahk
exampleThread := AHKThread(A_ScriptDir "\exampleTwo.ahk", "" ObjPtr(CritObj), "exampleTwo", true)

;;;;;;;;

; Non-compiled: MessageBox with "Manipulated CritObj String"
; Compiled: Function library not found #include <exampleLibrary>
#include <exampleThree>
exampleThread := AHKThread(exampleThreeString, "" ObjPtr(CritObj), "exampleThree", false)

; addFile appears to be the same issue

; BinRun might work, but then I'd have to compile two or more .exe's and I'd prefer to package it into a single

;;;;;;;;

Sleep(2000) ; Jank Test
Return