#Requires AutoHotkey v2.0

global isActive:=false
global speed:=20
global y:=0
global x:=0

$!s::{
  global isActive
  isActive:=!isActive
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
shift::global speed:=5
shift up::global speed:=20
space::mouseclick "left",,,,,"D"
space up::mouseclick "left",,,,,"U"
f::mouseclick "right"
e::mouseclick "wheeldown"
q::mouseclick "wheelup"
r::mouseclick "middle"
#hotif

while true {
    global x
    global y

    MouseMove x*speed,y*speed,0,"R"
}

