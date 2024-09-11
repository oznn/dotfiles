#Requires AutoHotkey v2.0

^1::send "{lwin down}{1}{lwin up}"
^2::send "{lwin down}{2}{lwin up}"
^3::send "{lwin down}{3}{lwin up}"
^4::send "{lwin down}{4}{lwin up}"
^5::send "{lwin down}{5}{lwin up}"

+space::enter

!;::^backspace
!space::escape
!a::^tab
!'::`
!J::volume_down
!K::volume_up
!m::volume_mute
!H::media_prev
!L::media_next
!p::media_play_pause
!j::down
!k::up
!h::left
!l::right
!f::^f
!q::send "!{left}"

#HotIf WinActive("ahk_exe ahk_exe neovide.exe")
!;::^w