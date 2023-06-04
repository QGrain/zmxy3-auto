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
MacroID=b3cecd45-159a-4924-8658-c7eaf460ea97
Description=刷28星宿
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
Dim pAccessory, pAcsyBag, pAcsyUse, pBlue, pDev, pPage2, pDouble
pAccessory = Array(1365, 326)
pAcsyBag = Array(1507, 549)
pAcsyUse = Array(1547, 572)
pBlue = Array(1016, 181)
pDev = Array(1459, 264)
pPage2 = Array(1666, 611)
pDouble = Array(995, 684)

Dim pX6, pX7, pSpeed, pCenter
pX6 = Array(1290, 540)
pX7 = Array(1452, 540)
pSpeed = Array(2212, 44)
pCenter = Array(1370, 450)

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
	MoveTo pPage2(0), pPage2(1)
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


Function EnterX(x, y)
	MoveTo x, y
	Delay 50
	LeftClick 1
	Delay 300
	KeyPress "U", 1
	Delay 10
	KeyPress "D", 1
	Delay 10
	KeyDown "D", 1
	Delay 2500
	KeyUp "D", 1
End Function


Function SSJ
	Do
		KeyPress "S", 1
		Delay 6
		KeyPress "S", 1
		Delay 6
		KeyPress "J", 1
	Loop
End Function



Dim t
t = Int(Timer())

Call EnterX(pX7(0), pX7(1))

BeginThread SSJ

Call SpeedUp

Do
	IfColor pBlue(0), pBlue(1), "0", 2 Then
		Call RecoverBlue
	End If
	IfColor pDouble(0), pDouble(1), "A2FC",2 Then
		KeyPress "Space", 1
	End If
	
	If Int(Time() - t) > 10 Then 
		StopThread SSJ
		Exit Do
	End If
Loop

Call SpeedDown

EndScript
