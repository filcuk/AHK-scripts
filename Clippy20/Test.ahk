#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#Persistent
#SingleInstance Force

#Hotstring c * ?
::--::�				; En Dash, hostring is <hyphen><hyphen>
::?::
MsgBox % A_PriorHotkey
return

---

#Hotstring c ? *
::a\::�
::�\::�
::�\::a
::a\::a
#Hotstring c0 ?0 *0
