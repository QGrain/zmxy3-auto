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
MacroID=70f6444c-0dc4-46b9-b50c-e3b00abd92ae
Description=强化
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
Dim pDan, pP2, pDev, pDao, pP3, pShi, pQ
pDan = Array(1069, 691)
pP2 = Array(1655, 609)
pDev = Array(1561, 394)
pDao = Array(1534, 283)
pP3 = Array(1690, 613)
pShi = Array(1675, 453) ' 4级
'pShi = Array(1617, 571) '3级
pQ = Array(1228, 591)

' pFail (1370, 410, 1437, 445)

Function Plus
	MoveTo pDan(0), pDan(1)
	Delay 70
	LeftClick 1
	Delay 600
	MoveTo pP3(0), pP3(1)
	Delay 60
	LeftClick 1
	Delay 100
	MoveTo pDev(0), pDev(1)
	Delay 80
	LeftClick 1
	Delay 100
	MoveTo pDao(0), pDao(1)
	Delay 60
	LeftClick 1
	Delay 100
	MoveTo pP3(0), pP3(1)
	Delay 60
	LeftClick 1
	Delay 100
	MoveTo pShi(0), pShi(1)
	Delay 60
	LeftClick 1
	Delay 100
	LeftClick 1
	Delay 100
	LeftClick 1
	Delay 100
	MoveTo pQ(0), pQ(1)
	Delay 50
	LeftClick 1
	Delay 100
End Function

Function CheckFail
	Dim rx, ry
	Delay 400
	CheckFail = 0
	FindPic 1370, 410, 1437, 445, "D:\Games\按键精灵\fail.bmp", 0.9, rx, ry
	If rx > - 1  Then 
		TracePrint "Plus failed"
		CheckFail = 1
	End If
End Function


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
	MoveTo 1790, 169' 丹炉内返回
	Delay 100
	LeftClick 1
	Delay 500
	MoveTo 1393, 685' 返回
	Delay 100
	LeftClick 1
	Delay 500
	MoveTo 1707, 343' 读取存档
	Delay 100
	LeftClick 1
	Delay 500
	MoveTo 1502, 563' 存档6八戒
	Delay 300
	LeftClick 1
	Delay 8000
End Function

Do
	Call Plus
	If CheckFail = 1 Then 
		Call SaveTab2
		Call ReLoginTab1
	Else 
		Exit Do
	End If
Loop

EndScript
