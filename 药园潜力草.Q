[General]
SyntaxVersion=2
BeginHotkey=118
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=dad0b065-5860-40c1-bc24-80831b3e96de
Description=药园潜力草
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
' block1 1414, 438
' block2 1338, 485
' block3 1260, 539
' block4 1505, 464
' block5 1429, 523
' block6 1360, 580
' block7 1592, 505
' block8 1523, 560
' block9 1453, 615
' 未开田的颜色 ≈ 1CAA6C
' 种植黄色框 1501, 345  24D6FF

Function plant
	MoveTo 1385, 434 ' 潜力草
	LeftClick 1
	Delay 100
	MoveTo 1435, 469' 灵魂升级
	quit = 0
	Do While quit = 0
		LeftClick 1
		Delay 40
		IfColor 1453,392,"3C434B",1 Then
			quit = 1
		End If
	Loop
	LeftClick 1
	Delay 100
	MoveTo 1272, 523' 种植
	LeftClick 1
	Delay 100
End Function

Dim land(8, 1)
land(0, 0) = 1414
land(0, 1) = 438
land(1, 0) = 1338
land(1, 1) = 485
land(2, 0) = 1260
land(2, 1) = 539
land(3, 0) = 1505
land(3, 1) = 464
land(4, 0) = 1429
land(4, 1) = 523
land(5, 0) = 1360
land(5, 1) = 580
land(6, 0) = 1592
land(6, 1) = 505
land(7, 0) = 1523
land(7, 1) = 560
land(8, 0) = 1453
land(8, 1) = 615

For i = 0 To 8
	Delay 300
	MoveTo land(i, 0), land(i, 1)
	Delay 300
	IfColor land(i, 0), land(i, 1), "1CAA6C", 2 Then
		TracePrint "This land is not enabled"
	Else 
		Delay 200
		LeftClick 1
		Delay 300
		IfColor 1501, 345, "24D6FF", 2 Then
			Call plant
		End If
	End If

Next
