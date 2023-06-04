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
MacroID=cb505976-1eeb-4380-8ca0-cc0072081d9b
Description=三合一
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
Dim t
t = Array(1617, 453)'1级
't = Array(1503, 509)'2
't = Array(1448, 332)'3

Do
	MoveTo t(0), t(1)
	Delay 50
	LeftClick 1
	Delay 100
	LeftClick 1
	Delay 100
	LeftClick 1
	Delay 100
	MoveTo 1237, 608
	Delay 50
	LeftClick 1
	Delay 100
Loop
