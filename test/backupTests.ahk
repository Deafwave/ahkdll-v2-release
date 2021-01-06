; src/exampleOne.ahk

defaultObject := {
    testVar: "test failed"
}

CritObj := CriticalObject(defaultObject)

;;;;;;;;

;; (KINDA) WORKING VARIANT (ONE ERROR AFTER COMPILE)
;; Non-compiled: Working as Expected
;; Compiled: Warning: This variable has not yet been assigned a value Specifically local aScript at L#77 @ https://i.imgur.com/gkmXBEh.png
;; Import Code String
; #include <exampleThree>
; exampleThread := AHKThread(CreateScript("ExampleLibrary:ExampleLibraryEnd"), "" ObjPtr(CritObj))

;; (KINDA) WORKING VARIANT (ONE ERROR AFTER COMPILE)
;; Non-compiled: Working as Expected
;; Compiled: Warning: This variable has not yet been assigned a value Specifically local aScript at L#73 @ https://i.imgur.com/3f2GasX.png
; exampleThread := AHKThread(CreateScript("ExampleTwoMemory:ExampleTwoMemoryEnd"), "" ObjPtr(CritObj))

;; (KINDA) WORKING VARIANT (ONE ERROR AFTER COMPILE)
;; Non-compiled: Working as Expected
;; Compiled: local aScript error at L#73 but it still executes @ https://i.imgur.com/ewxgNjv.png
exampleThread := AHKThread(CreateScript("ExampleFourMemory:ExampleFourMemoryEnd"), "" ObjPtr(CritObj))

;; Non-compiled: Nothing happens
;; Compiled: Warning in #include file "CreateScript.ahk"
;;   This variable has not been assigned a value
;;   Specifically: local aScript (L#27) @ https://i.imgur.com/9DThmyq.png
;;   Missing "}" somewhere
; exampleThread := AHKThread(CreateScript("ExampleTwoMemory{}"), "" ObjPtr(CritObj))

;; Non-compiled: Nothing happens
;; Compiled: Call to nonexistent function
;;   Specifically: ExampleTwoMemory()
; exampleThread := AHKThread(CreateScript("ExampleTwoMemory()"), "" ObjPtr(CritObj))

Sleep(2000) ; Jank Test
Return


;; Seems to cause strange Return issues, probably because of my bypass placeholder
; ExampleTwoMemory:
; placeholder := "So label isn't looking at a function, and is not a return to prevent code execution"
; #include <exampleTwoLib>
; ExampleTwoMemoryEnd:
; Return

;; Seems to cause strange Return issues, probably because of my bypass placeholder
ExampleFourMemory:
placeholder := "So label isn't looking at a function, and is not a return to prevent code execution"
#include <funcLib>
#include <exampleTwo>
ExampleFourMemoryEnd:
Return

; ExampleTwoMemory() {
;     MsgBox("test trough pipe")
;     Return
; }

;; Seems to cause strange Return issues, probably because of my bypass placeholder
; ExampleLibrary:
; placeholder := "So label isn't looking at a function, and is not a return to prevent code execution"
; #include <funcLib>
; ExampleLibraryEnd:
; Return