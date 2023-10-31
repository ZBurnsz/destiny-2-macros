#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

!4::
Loop
{
    sleep, left, 10000
    click, left 
    sleep, 1500
}
return 

!p::
reload
return

!9::
ExitApp
Return
