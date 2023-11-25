#MaxThreadsPerHotkey 3
Loop
{
if toggle
{
Gosub ClickReady
Gosub ClickContinue
Gosub ClickContinuePopup
Gosub RandomDirection
Gosub RightClick
Gosub RightClick2
Gosub LeftClick
}
Sleep, 100
}
return
RightClick:
Click Down Right
Sleep, 3000
Click Up Right
Sleep, 500
return
RightClick2:
Click Down Right
Sleep, 3500
Click Up Right
Sleep, 500
return
LeftClick:
Loop,12
{
Send, {Control down}
MouseClick, left,
Send, {Control up}
Sleep, 1000
}
Sleep, 3500
return
RandomDirection:
SendInput,% "{" (Key:=["w","a","s","d"][Rand(1,4)]) " Down}"
SetTimer,,% -Rand(5000, 90000)
Sleep, Rand(500, 1500) ; random 'key press' time
SendInput, {%Key% Up}
return
ClickReady:
Click, 1823 909
return
ClickContinue:
Click, 1822 1022
return
ClickContinuePopup:
Click, 1372 652
return

Rand(Min:="", Max:=""){
    Random, Out, Min, Max
	Return, Out
}

F8::toggle:=!toggle