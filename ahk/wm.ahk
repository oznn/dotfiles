#Requires AutoHotkey v2.0

switchInstance(){
  name:=winGetProcessName("A")
  list:=winGetList("ahk_exe " name)
  winList:=[]

  for i,v in list {
    if winGetMinMax("ahk_id " v) {
        winList.push(v)
    }
  }

  if (winList.length>0 && winExist("ahk_id " winList[winList.length])) {
    winActivate
  }
}
activateApp(name){
  if winExist("ahk_exe " name)
    winActivate
  else run (name=="WindowsTerminal.exe"?"wt":name)
}
!0::switchInstance()
!1::activateApp("msedge.exe")
!2::activateApp("neovide.exe")
!3::activateApp("WindowsTerminal.exe")
!4::activateApp("electron.exe")
