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
MacroID=e90fb58f-8d49-4e11-b101-b82fd6710bbd
Description=刷神君
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
Dim pAccessory, pAcsyBag, pAcsyUse, pBlue, pRed, pDev, pPage2, pDouble
pAccessory = Array(1335, 334)
pAcsyBag = Array(1588, 318)
pAcsyUse = Array(1630, 338)
pBlue = Array(973, 178)
pRed = Array(1087, 162)
pDev = Array(1459, 264)
pPage2 = Array(1666, 611)
pPage3 = Array(1673, 610)
pDouble = Array(995, 684)

Dim 绝仙门, 戮仙门, 陷仙门, pSpeed, pCenter, pOut, pBackMap
绝仙门 = Array(985, 627)
戮仙门 = Array(1197, 416)
陷仙门 = Array(1606, 453)
pSpeed = Array(2212, 44)
pCenter = Array(1370, 450)
pOut = Array(1646, 646)
pBackMap = Array(1226, 556)

Function RecoverBlue
	KeyPress "C", 1
	Delay 100
	MoveTo pAccessory(0), pAccessory(1)
	Delay 50
	LeftClick 1
	Delay 100
	MoveTo pDev(0), pDev(1)
	Delay 50
	LeftClick 1
	Delay 100
	MoveTo pPage3(0), pPage3(1)
	Delay 50
	LeftClick 1
	Delay 100
	MoveTo pAcsyBag(0), pAcsyBag(1)
	Delay 50
	LeftClick 1
	Delay 100
	MoveTo pAcsyUse(0), pAcsyUse(1)
	Delay 50
	LeftClick 1
	Delay 100
	KeyPress "C", 1
End Function

Function RecoverRed
	KeyPress "U", 1
End Function

Function SpeedUp
	MoveTo pSpeed(0), pSpeed(1)
	Delay 50
	LeftClick 1
	Delay 50
	MoveTo pCenter(0), pCenter(1)
	Delay 50
End Function

Function SpeedDown
	MoveTo pSpeed(0), pSpeed(1)
	Delay 50
	LeftClick 1
	Delay 50
	MoveTo pCenter(0), pCenter(1)
	Delay 50
End Function


Function Move
	KeyPress "A", 1
	KeyDown "A", 1
	Delay 500
	KeyUp "A", 1
	KeyPress "D", 1
	KeyDown "D", 1
	Delay 1060
	KeyUp "D", 1
End Function


Function SSJ
	Do
		KeyPress "S", 1
		Delay 1
		KeyPress "S", 1
		Delay 1
		KeyPress "J", 1
	Loop
End Function


Rem start

MoveTo 戮仙门(0), 戮仙门(1)
Delay 50
LeftClick 1
Delay 500

BeginThread SSJ

Call SpeedUp

Do
	IfColor pBlue(0), pBlue(1), "000000", 0 Then
		Call RecoverBlue
	End If
	IfColor pRed(0), pRed(1), "000000", 0 Then
		Call RecoverRed
	End If
	IfColor pDouble(0), pDouble(1), "A2FC",2 Then
		KeyPress "Space", 1
	End If
	
	IfColor pOut(0), pOut(1), "FFFFFF", 0 Then
		StopThread SSJ
		Exit Do
	End If
Loop

Call Move

Call SpeedDown

KeyPress "W", 1
Delay 100
MoveTo pBackMap(0), pBackMap(1)
Delay 50
LeftClick 1
Delay 200

EndScript
