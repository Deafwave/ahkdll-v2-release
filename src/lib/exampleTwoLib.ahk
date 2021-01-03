; src/exampleTwoLib.ahk

#include <exampleLibrary>

CritObj := CriticalObject(A_Args[1])
CritObj.testVar := "[SUCCESS] Manipulated CritObj String"

MessageBoxFunction(CritObj.testVar)