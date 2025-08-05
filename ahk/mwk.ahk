#Requires AutoHotkey v2.0
coordMode "Mouse"

global isActive:=false
global speed:=4
global y:=0
global x:=0

!s::{
  global isActive
  isActive:=!isActive

  mouseGetPos &mx,&my
  mouseMove (isActive?a_screenWidth/2:a_screenWidth), my, 0
}

#hotif isActive
w::global y:=-1
a::global x:=-1
s::global y:=1
d::global x:=1
w up::global y:=0
a up::global x:=0
s up::global y:=0
d up::global x:=0
shift::global speed:=1
shift up::global speed:=4
c::media_next
f::mouseclick "right"
e::{
    MouseGetPos ,, &Win
    if (WinExist("ahk_class Shell_TrayWnd" " ahk_id " Win)) {
        sendInput "{volume_down}"
    } else {
        sendInput "{wheeldown}"
    }
}
q::{
    MouseGetPos ,, &Win
    if (WinExist("ahk_class Shell_TrayWnd" " ahk_id " Win)) {
        sendInput "{volume_up}"
    } else {
        sendInput "{wheelup}"
    }
}
r::mouseclick "middle"

i::global y:=-1
j::global x:=-1
k::global y:=1
l::global x:=1
i up::global y:=0
j up::global x:=0
k up::global y:=0
l up::global x:=0
`;::global speed:=1
`; up::global speed:=4
h::mouseclick "right"
u::mouseclick "wheeldown"
o::mouseclick "wheelup"
y::mouseclick "middle"

space::mouseclick "left",,,,,"D"
space up::mouseclick "left",,,,,"U"

while true {
    run()
}
#hotif

run() {
    global x
    global y

    ; mouseGetPos &mx,&my
    ; if (mx==a_screenWidth-1 && x==1) {
    ;   mouseMove 0, my, 0
    ;   return
    ; }
    ; if (mx==0 && x==-1) {
    ;    mouseMove a_screenWidth, my, 0
    ;    return
    ; }

    mouseMove x*speed*7, y*speed*7, 0, "R"
}

