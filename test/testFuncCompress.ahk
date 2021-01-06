defaultObject := {
    testVar: "test failed"
}

CritObj := CriticalObject(defaultObject)

exampleThread := AHKThread(CreateScript("ExampleFourMemory:ExampleFourMemoryEnd", "AutoHotkey"), "" ObjPtr(CritObj))

Sleep(2000) ; Automatically Exits After 2 Seconds
Return

ExampleFourMemory:
placeholder := "So label isn't looking at a function, and is not a return to prevent code execution"
#include <funcLib>
#include <manipulateString>
#include <callFunc>
ExampleFourMemoryEnd:
Return