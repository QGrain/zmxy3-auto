[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=39ce2dfe-effa-4426-9b6c-01753d1d1d41
Description=珍珠店铺
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
' Created by zzy
' 使用方法：点开神秘商店，保证是从第一个格子开始购买的状态。
' 然后打开按键精灵，启用此脚本，按下启动快捷键(F10)开始购买，F12停止
' 这只是一个初级版，缺点是不可以在购买过程中移动鼠标或者窗口，且无法自动识别次数已消耗光
' 有闲心的朋友可以改进改进

Dim pC(3, 1)
pC(0, 0) = 1197
pC(0, 1) = 458
pC(1, 0) = 1298
pC(1, 1) = 459
pC(2, 0) = 1398
pC(2, 1) = 459
pC(3, 0) = 1500
pC(3, 1) = 458
Dim pB(3, 1) '7C7C7C for unenabled
pB(0, 0) = 1262
pB(0, 1) = 340
pB(1, 0) = 1363
pB(1, 1) = 340
pB(2, 0) = 1466
pB(2, 1) = 340
pB(3, 0) = 1570
pB(3, 1) = 340

Dim pS, pZ, pYanlei
pS = Array(1393, 594)
pZ = Array(1405, 654)
pYanlei = Array(1503, 373)

Function buy
	Delay 50
	LeftClick 1
	Delay 50
End Function


Rem state1
MoveTo pC(0, 0), pC(0, 1)
Call buy


'IfColor pC(1, 0), pB(1, 1),"FFBD02", 1 Then
'	Goto state1
'End If

Rem state2
MoveTo pC(1, 0), pC(1, 1)
Call buy

IfColor pC(2, 0), pC(2, 1),"FFBD02", 2 Then
	Goto fresh
Else 
	Goto state1
End If


Rem fresh
MoveTo pS(0), pS(1)
Delay 50
LeftClick 1
Delay 900
MoveTo pZ(0), pZ(1)
Delay 50
LeftClick 1
Delay 900

Goto state1
