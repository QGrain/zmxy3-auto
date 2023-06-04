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
MacroID=8e996ecc-7577-40ab-a3b7-e455d07bffaa
Description=神秘商店_买1级攻1级强和雷碎
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

Function buy
	Delay 3000
	If GetCursorShape(0) = 553556112 Then
		LeftClick 1
	Else 
		Delay 500
		LeftClick 1
	End If
	Delay 80
End Function

level4 = 0
level5 = 0

Rem state1
MoveTo 1213, 430
Call buy

If level4 = 1 Then
	Goto state4
End If
If level5 = 1 Then
	Goto state5
End If

IfColor 1312, 437,"7F7F7F", 0 Then
	Goto state1
End If

Rem state2
MoveTo 1314, 430
Call buy

IfColor 1413,317,"7D7D7D",0 Then
	Goto state1
End If

Rem state3
MoveTo 1417, 430
Call buy

IfColor 1518,437,"7F7F7F",0 Then
	Goto state1
End If

Rem state4
MoveTo 1519, 430
level4 = 1
' 1级攻击石
IfColor 1517,346,"00FF00",2 Then
	Call buy
	Goto judge5
End If
' 1级强化石
IfColor 1522,354,"BAB096",2 Then
	Call buy
	Goto judge5
End If
' 都不是则回到state1刷新
Goto state1

Rem judge5
level4 = 0
IfColor 1620,435,"7F7F7F",0 Then
	Goto state1
End If

Rem state5
MoveTo 1620, 430
level5 = 1
' 雷灵珠碎片
IfColor 1620,336,"F8A2FF",2 Then
	Call buy
	level5 = 0
Else 
	Goto state1
End If

Goto state1
