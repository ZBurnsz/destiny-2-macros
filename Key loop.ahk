; Get the handle of the monitor you want to target
monitorHandle := GetMonitorHandle(1)  ; Replace 2 with the desired monitor number (starting from 1)

; Set the target monitor as the active monitor
DllCall("SetForegroundWindow", "Ptr", monitorHandle)


7::pause,toggle
8::
loop{
    send {f down}
    sleep 1900
    send {f up}
}
9::
Exitapp

GetMonitorHandle(monitorNumber) {
    ; Get the handle of the specified monitor
    monitorHandle := 0
    SysGet, monitorCount, MonitorCount
    
    if (monitorNumber <= monitorCount) {
        SysGet, monitorList, Monitor, all
        monitorHandle := monitorList[monitorNumber]
    }
    
    return monitorHandle
}

