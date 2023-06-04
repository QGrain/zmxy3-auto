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
MacroID=76508428-c437-4e6c-af7d-c1b9cebdbfef
Description=初级还童
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
Dim 药园, 潜力商店, 子鼠, 宠物还童, 攻击资质, 初级还童, 确定
药园 = Array(1325, 695)
潜力商店 = Array(1312, 697)
子鼠 = Array(1416, 333)
宠物还童 = Array(1365, 461)
攻击资质 = Array(1246, 552)
初级还童 = Array(1276, 611)
确定 = Array(1317, 486)
' 1667的67数字范围: 1412, 542, 1431, 557

Function 还童
	MoveTo 药园(0), 药园(1)
	Delay 50
	LeftClick 1
	Delay 200
	MoveTo 潜力商店(0), 潜力商店(1)
	Delay 50
	LeftClick 1
	Delay 100
	MoveTo 子鼠(0), 子鼠(1)
	Delay 50
	LeftClick 1
	Delay 100
	MoveTo 宠物还童(0), 宠物还童(1)
	Delay 50
	LeftClick 1
	Delay 100
	MoveTo 攻击资质(0), 攻击资质(1)
	Delay 50
	LeftClick 1
	Delay 100
	MoveTo 初级还童(0), 初级还童(1)
	Delay 50
	LeftClick 1
	Delay 200
	MoveTo 确定(0), 确定(1)
	Delay 50
	LeftClick 1
	Delay 200
End Function

Function 判定
	Dim atk, atkStr
	atkStr = SmartOcr(1412, 542, 1431, 557, "AEC8A6-FFFFFF")
	atk = CInt(atkStr)
	If atk > 67 Then 
		判定 = 1
	Else 
		判定 = 0
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
	MoveTo 1542, 189' Close
	Delay 100
	LeftClick 1
	Delay 300
	MoveTo 1750, 167' 离开药园
	Delay 100
	LeftClick 1
	Delay 300
	MoveTo 1392, 692' 返回
	Delay 100
	LeftClick 1
	Delay 500
	MoveTo 1707, 343' 读取存档
	Delay 100
	LeftClick 1
	Delay 500
	MoveTo 1502, 563' 存档6八戒
	Delay 500
	LeftClick 1
	Delay 5000
End Function


Do
	Call 还童
	If 判定 = 1 Then 
		Exit Do
	Else 
		Call SaveTab2
		Call ReLoginTab1
	End If
Loop

EndScript

