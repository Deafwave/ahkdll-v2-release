#Persistent
#SingleInstance force


LO := AHKThread(CreateScript("Learning:LearningEnd", "oCKArYwIpx"))
LT := AHKThread(CreateScript("LearningTwo:LearningTwoEnd", "oCKArYwIpx"))

Sleep(2000) ; Jank Test Sleep
Return

Learning:
placeholder := "" ; Still using this to bypass the return error
#Include <testIncludeOne>
LearningEnd:
Return

LearningTwo:
placeholder := "" ; Still using this to bypass the return error
#Include <testIncludeTwo>
LearningTwoEnd:
Return