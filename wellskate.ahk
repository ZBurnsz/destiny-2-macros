#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

!4::
Send, {3}
Sleep, 300
Click, Right Up
Click, Right Down
Sleep 100
Send, {Space}
sleep, 1
send, {f down}
sleep, 1
send, {f up}
send, {space}

Return

!0::
Reload
Return

!9::
ExitApp
Return
