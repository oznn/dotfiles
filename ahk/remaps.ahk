#Requires AutoHotkey v2.0

!;::^backspace
!space::escape
!'::`
!J::volume_down
!K::volume_up
!M::volume_mute
!H::media_prev
!L::media_next
!P::media_play_pause
!j::down
!k::up
!h::left
!l::right
!c::^c
!v::^v
!x::^x
!f::^f
!q::!left
!/::\
!.::tab
!,::+tab
!p::backspace
!a::^tab
!r::#r
!e::#e
+space::enter
~alt::send "{blind}{vkE8}"
^o::appsKey
^1::Numpad2
^2::Numpad4
^3::Numpad6
^4::Numpad8

#hotIf winActive("ahk_exe neovide.exe")
!;::^w
