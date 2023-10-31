#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory
#Persistent
7::pause, Toggle

9::
loop,
{
   MouseGetPos, StartX, StartY ; Gets the starting position of the mouse.
  MouseClick, left, , , , , D ; Presses and holds the left mouse button.
  Loop, 40 ; Moves the mouse downwards 20 times (you can adjust this number as needed).
  {
    CurrentY := StartY + (A_Index * 5) ; Calculates the current Y position based on the loop index.
    MouseMove, StartX, CurrentY, 50 ; Moves the mouse to the current position (with a delay of 50ms).
  }
  Sleep, 5500 ; Waits for 5.5 seconds.
  MouseMove, StartX, StartY, 0 ; Moves the mouse back to the starting position.
  Sleep, 4000 ; Waits for 4 seconds.
  MouseClick, left, , , , , U ; Releases the left mouse button.
Continue
}



