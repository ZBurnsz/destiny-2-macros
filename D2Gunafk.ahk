; ===============================================
; === GUI ======================================
; ===============================================

; ===============================================
; === Your Existing Script =====================
; ===============================================

#Persistent


Gui, Add, ListBox, w300 h200 hwndhOutput,
Gui, Add, Text, xm w300 center, Hit F12 to toggle on / off
Gui, Show,, Mouse Watcher, MouseDelta, MouseEvent(md, MouseID, obj), AlwaysOnTop(g.gui)

MacroOn := 0
md := new MouseDelta("MouseEvent, MouseMoved")

clicks := 14
click_interval := 3250 ; 3 seconds in milliseconds
pause_interval := 5100 ; 5 seconds in milliseconds
loop_counter := 0
CoordMode, Mouse, relative


!4::
{
    loop_counter := 0
    CoordMode, Mouse, relative
    Loop {
        ; Click left mouse button
        Click

        ; Decrement the click count
        clicks--

        ; Exit the loop if all clicks are done
        if (clicks <= 0) {
            Sleep, %pause_interval%
            clicks := 14 ; Reset the click count
            ++loop_counter

	    if (loop_counter = 2) {
                ; Move the mouse forward by a small amount
            send {w down}
            sleep 200
            send {w up}
            sleep 200
            send {s down}
            sleep 200
            send {s up}
            sleep 200
            ; Move the mouse using delta values

            md.MouseEvent(1, 0x103A, obj.x := 1277, obj.y := 718, 1,0 )
            MouseMove, 1278, 718, R
            loop_counter := 0
            }
          ;if (loop_counter = 1) {
            ; Move the mouse using delta values
            ;md.MouseEvent(1, 0x103A, obj.x := 1279, obj.y := 715)
            ;MouseMove, 1280, 720, md.MouseDelta
            ;loop_counter := 0
        ;}
        } else {
            Sleep, %click_interval%
        }


    }
}

8:: pause
return

9:: reload
return

7:: exitApp
