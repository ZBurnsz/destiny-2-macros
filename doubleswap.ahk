#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

8::
Loop, 6
{
	Click, Right Down
    	Send, {W Down}{1 Down}
    	Send, {LShift Down}
    	Sleep, 90
    	Send, {LShift Up}75
    	Sleep, 90
    	Send, {1 Up}
    	Sleep, 90
    	Send, {W Up}
    	Sleep, 305
	Click, Left, 1
	Sleep, 90
	Send, {W Down}
	Sleep, 90
	Send, {2 Down}
	Sleep, 90
	Send, {LShift Down}
	Sleep, 90
	Send, {LShift Up}
	Sleep, 90
	Send, {2 Up}
	Sleep, 90
	Send, {W Up}
	Sleep, 305
	Click, Left, 1
	Sleep, 90
	Click, Right Up
}
return 

0::
Reload
Return

9::
ExitApp
Return
