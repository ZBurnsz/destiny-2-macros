#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

!4::
loop
{
    click, right down 
}
return

!p::
reload
return

!9::
ExitApp
Return

