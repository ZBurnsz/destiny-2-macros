#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

7::pause, toggle

5::
loop,
{
    Click, left down
    Sleep, 1600
    click, left Up
    sleep, 300
    MouseMove, 0, 50, 5, R
    Sleep, 300
    MouseMove, 0, -50, 5, R
    Sleep, 1000
    Continue
return
}



8::
ExitApp