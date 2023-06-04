[General]
SyntaxVersion=2
BeginHotkey=120
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=5e92137b-ae43-4962-b818-b1904c2967a8
Description=刷极品八卦
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
' 返回 1393, 685
' 丹炉内返回 1790, 169
' 读取存档 1707, 343
' 保存游戏 940, 685
' 存档6八戒 1502, 563
' 炼丹炉 1069, 685
' 合成页 1081, 710
' 第二页 1656, 615
' 阴 1561, 393
' 阳 1504, 393
' 初 1504, 573
' 确认合成 1234, 602
' Tab1 221, 15
' Tab2 418, 15
' 悬停查看位置1 1216, 464
' 悬停查看位置2 1505, 509

' 成长3  (1330, 521, 1339, 535)
' 魔抗8% (1315, 672, 1336, 686)
' 暴击8% (1315, 572, 1336, 586)
' 闪避8% (1315, 597, 1336, 611)

Dim yin, yang, chu
yin = Array(1561, 393)
yang = Array(1504, 393)
chu = Array(1504, 573)

Function Combination
	MoveTo 1069, 685' 炼丹炉
	Delay 50
	LeftClick 1
	Delay 200
	MoveTo 1081, 710' 合成页
	Delay 50
	LeftClick 1
	Delay 200
	MoveTo 1656, 615' 第二页
	Delay 50
	LeftClick 1
	Delay 200
	MoveTo chu(0), chu(1)' 初
	Delay 50
	LeftClick 1
	Delay 200
	MoveTo yin(0), yin(1)' 阴
	Delay 50
	LeftClick 1
	Delay 200
	MoveTo yang(0), yang(1)' 阳
	Delay 50
	LeftClick 1
	Delay 200
	MoveTo 1234, 602' 确认合成
	Delay 50
	LeftClick 1
	Delay 200
	MoveTo 1216, 464' 悬停查看1
	Delay 400
End Function

Function Check
	Check = 1
	Dim rx, ry
	MoveTo 1216, 464' 悬停查看1
	Delay 500
	'FindPic 1310, 670, 1340, 690, "D:\Games\按键精灵\mokang8.bmp", 0.9, rx, ry
	'If rx > - 1  Then 
	'	TracePrint "Mokang 8% matched"
	'Else 
	'	Check = 0
	'End If
	FindPic 1310, 570, 1340, 590, "D:\Games\按键精灵\baoji8.bmp", 0.9, rx, ry
	If rx > - 1  Then 
		TracePrint "Baoji 8% matched"
	Else 
		Check = 0
	End If
	'FindPic 1310, 590, 1340, 620, "D:\Games\按键精灵\shanbi8.bmp", 0.9, rx, ry
	'If rx > - 1  Then 
	'	TracePrint "Shanbi 8% matched"
	'Else 
	'	Check = 0
	'End If
	'FindPic 1310, 620, 1325, 640, "D:\Games\按键精灵\huixue2.bmp", 0.9, rx, ry
	'If rx > - 1  Then 
	'	TracePrint "Huixue 2X matched"
	'Else 
	'	Check = 0
	'End If
	FindPic 1320, 515, 1345, 540, "D:\Games\按键精灵\chengzhang3.bmp", 0.9, rx, ry
	If rx > - 1  Then 
		TracePrint "Chengzhang 3 matched"
	Else 
		Check = 0
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
	Delay 100
	LeftClick 1
	Delay 6000
End Function


' Tab1和Tab2均已经登录，从Tab1天庭主页开始
match = 0
Do
	Call Combination
	match = Check
	If match = 0 Then 
		Delay 500
		Call SaveTab2
		Call ReLoginTab1
	Else 
		Delay 5000
		EndScript
	End If
Loop While match = 0
