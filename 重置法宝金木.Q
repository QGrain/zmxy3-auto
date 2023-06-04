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
MacroID=21069759-288f-486c-9d9d-b6948f1de4ff
Description=重置法宝金木
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
Function SaveTab2
	Delay 500
	MoveTo 418, 15' Tab2
	Delay 100
	LeftClick 1
	Delay 500
	MoveTo 940, 685' 保存游戏
	Delay 500
	If GetCursorShape(0) = 924318289 Then 
		LeftClick 1
	Else 
		Delay 1000
		LeftClick 1
	End If
	Delay 300
End Function

Function ReLoginTab1
	Delay 500
	MoveTo 221, 15' Tab1
	Delay 100
	LeftClick 1
	Delay 500
	MoveTo 1707, 343' 读取存档
	Delay 100
	LeftClick 1
	Delay 500
	MoveTo 1502, 563' 存档6八戒
	Delay 100
	LeftClick 1
	Delay 6400
End Function

Dim rx, ry, find

Rem l1
find = 1 
MoveTo 1109, 593
Delay 100
LeftClick 1
Delay 1200
MoveTo 961, 622
Delay 100
LeftClick 1
Delay 300
MoveTo 1434, 561
Delay 100
LeftClick 1
Delay 300
MoveTo 1321, 490
Delay 100
LeftClick 1
Delay 300

FindPic 1287, 414, 1304, 431, "D:\Games\按键精灵\jin.bmp", 0.9, rx, ry
If rx > - 1  Then 
	TracePrint "jin matched"
Else 
	find = 0
End If
FindPic 1303, 413, 1322, 431, "D:\Games\按键精灵\mu.bmp", 0.9, rx, ry
If rx > - 1  Then 
	TracePrint "mu matched"
Else 
	find = 0
End If

If find = 1 Then 
	EndScript
End If
MoveTo 1639, 246
Delay 100
LeftClick 1
Delay 400
MoveTo 970, 704
Delay 100
LeftClick 1
Delay 100
MoveTo 1370, 501
Delay 100
LeftClick 1
Delay 250
Call SaveTab2
Call ReLoginTab1
Goto l1
