 ;  =============================================================
;# __ C:\SCRIPTER\SCRIPTER CODE -- AUTOKEY\Autokey -- 58-Auto Repeat Browser Function Set.ahk
;# __ 
;# __ Autokey -- 58-Auto Repeat Browser Function Set.ahk
;# __ 
;# __ BY Matthew Lancaster 
;# __ Matt.Lan@Btinternet.com
;# __ 
;  =============================================================

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;

; -------------------------------------------------------------------
; -------------------------------------------------------------------
; SESSION 01
; -------------------------------------------------------------------
; WORK DO-ER
; SPLIT THE CODE AWAY FROM 
; Autokey -- 01-F10 __ HOTKEY __ PRINT SCREEN.ahk
; AND MOVED INTO THIS ONE
; Autokey -- 58-Auto Repeat Play Video Facebook.ahk
; -------------------------------------------------------------------
; 01
; AUTO_HITTER_COUNTER_FOR_FACEBOOK_VIDEO:
; 02
; AUTO_RELOAD_RAIN_ALARM:
; 03 
; AUTO_RELOAD_FACEBOOK_QUICK_SUB:
; 04 
; AUTO_RELOAD_FACEBOOK:
; 
; -------------------------------------------------------------------
; FROM __ Tue 26-Feb-2019 15:56:21
; TO   __ Tue 26-Feb-2019 20:38:00 __ FIVE HOUR-ING _ TIMING'S HARD AND GO FIGURE IT ALL
; -------------------------------------------------------------------


;# ------------------------------------------------------------------
; Location On-Line
;--------------------------------------------------------------------
; ----
; Matthew-Lancaster/Autokey -- 58-Auto Repeat Browser Function Set.ahk
; https://github.com/Matthew-Lancaster/Matthew-Lancaster/blob/master/SCRIPTER%20CODE%20--%20AUTOKEY/Autokey%20--%2001-F10%20__%20HOTKEY%20__%20PRINT%20SCREEN.ahk
; ----
;# ------------------------------------------------------------------

;
; -------------------------------------------------------------------
#SingleInstance force
; -------------------------------------------------------------------
#Persistent
; -------------------------------------------------------------------

; -------------------------------------------------------------------
; Register a function to be called on exit:
OnExit("ExitFunc")

; Register an object to be called on exit:
OnExit(ObjBindMethod(MyObject, "Exiting"))
; -------------------------------------------------------------------

; -------------------------------------------------------------------
; CODE INITIALIZE
; -------------------------------------------------------------------
SoundBeep , 1500 , 400
SetStoreCapslockMode, off

SETTIMER TIMER_PREVIOUS_INSTANCE,1

DetectHiddenWindows, oFF
SetTitleMatchMode 3  ; Specify Full path

GLOBAL XPOS
GLOBAL YPOS

GLOBAL O_ID
O_ID=0

GLOBAL OutputVar_4

GLOBAL O_OutputVar_store
O_OutputVar_store=

GLOBAL PART_RENAME_VAR

GLOBAL STATE_XYPOSCOUNTER
STATE_XYPOSCOUNTER=0

GLOBAL OLD_STATE_XYPOSCOUNTER
OLD_STATE_XYPOSCOUNTER=0


AUTO_RELOAD_FACEBOOK_QUICK_SUB_DELAY_VAR=FALSE
OLD_AUTO_RELOAD_FACEBOOK_VAR=0
SETTIMER AUTO_RELOAD_FACEBOOK,59000
SETTIMER AUTO_RELOAD_FACEBOOK_QUICK_SUB,1000

SETTIMER AUTO_RELOAD_RAIN_ALARM,10000

AUTO_HITTER_COUNTER_FOR_FACEBOOK_VIDEO_RUN_ONCE=TRUE
SETTIMER AUTO_HITTER_COUNTER_FOR_FACEBOOK_VIDEO,1000

SetTitleMatchMode 2  ; Avoids the need to specify the full path of the file below.

RETURN

; -------------------------------------------------------------------
; -------------------------------------------------------------------


AUTO_HITTER_COUNTER_FOR_FACEBOOK_VIDEO:
	SetTitleMatchMode 2  ; NOT Specify Full path.

	; FORNICATE
	; https://www.facebook.com/100025231092355/videos/278770969640604/
	
	SETTIMER AUTO_HITTER_COUNTER_FOR_FACEBOOK_VIDEO, 600000 ; 10 MINUTE

	; IF !A_ComputerName="8-MSI-GP62M-7RD"
	; 	RETURN

	SET_GO=FALSE
	IF A_ComputerName="3-LINDA-PC"
		SET_GO=TRUE
	IF A_ComputerName="7-ASUS-GL522VW"
		SET_GO=TRUE
		
	IF SET_GO=FALSE THEN
		RETURN
		
	IF A_ComputerName="3-LINDA-PC"
		AUTO_HITTER_COUNTER_FOR_FACEBOOK_VIDEO_RUN_ONCE=TRUE
		
	XR_2=0
	IF AUTO_HITTER_COUNTER_FOR_FACEBOOK_VIDEO_RUN_ONCE=TRUE
	{	
		AUTO_HITTER_COUNTER_FOR_FACEBOOK_VIDEO_RUN_ONCE=FALSE
		
		XR_3=
		IfWinExist, ahk_class Chrome_WidgetWin_1
			XR_3=Chrome_WidgetWin_1
		IfWinExist, ahk_class MozillaWindowClass
			XR_3=MozillaWindowClass
		
		XR_2=0
		IfWinExist, Facebook - Google Chrome
			XR_2=1
		IfWinExist, Facebook - Mozilla Firefox
			XR_2=1
		IfWinExist, Deborah Hall - So my very lovely
			XR_2=1
		
		IF XR_2=0
			XR_3=

		IF XR_3
		{	
			WinActivate, ahk_class %XR_3%
			WinWaitActive, ahk_class %XR_3%
			SLEEP 1000
		}
	}
	
	XR_3=
	IfWinExist, ahk_class Chrome_WidgetWin_1
		XR_3=Chrome_WidgetWin_1
	IfWinExist, ahk_class MozillaWindowClass
		XR_3=MozillaWindowClass

	IF !XR_3
		RETURN
		
	WinGetCLASS, CLASS_VAR, A
	WinGetTITLE, TITLE_VAR, A

	XR_1=0
	IF INSTR(CLASS_VAR,"Chrome_WidgetWin_1")
	{
		XR_1=1
		XR_3=Chrome_WidgetWin_1
	}
	IF INSTR(CLASS_VAR,"MozillaWindowClass")
	{
		XR_1=1
		XR_3=MozillaWindowClass
	}
	
	IF INSTR(TITLE_VAR,"Facebook - Google Chrome")
		XR_2=1
	IF INSTR(TITLE_VAR,"Facebook - Mozilla Firefox")
		XR_2=1
	IF INSTR(TITLE_VAR,"Deborah Hall - So my very lovely")
		XR_2=1
	
	IF XR_1>0
		IF XR_2>0
		{
			; CoordMode, Mouse, Client 
			SENDINPUT ^{HOME}
			SLEEP 100
			SENDINPUT {TAB}
			SLEEP 100
			SENDINPUT {SPACE}
			SLEEP 100
			MouseMove, 80, 200
			SLEEP 100

			SOUNDBEEP 1000,50
			SOUNDBEEP 1500,50
			SOUNDBEEP 2000,50

			; MouseClick, LEFT, 80, 200
		}
		
RETURN


AUTO_RELOAD_RAIN_ALARM:

	; ---------------------------------------------------------------
	; RAIN ALARM HAS INTRO A NEW THING LIKE A NAG SCREEN
	; THAT IS LEFT RUNNER A LONG TIME IT ASK YOU TO REFRESH THE SCREEN
	; HA HA
	; [ Wednesday 13:55:40 Pm_16 January 2019 ]
	; ---------------------------------------------------------------

	SETTIMER AUTO_RELOAD_RAIN_ALARM,3600000 ; 1 HOUR MAYBE TOO MUCH
	
	; If (A_TimeIdle < 8000)
	; {
		; RETURN
	; }
	
	WinGetCLASS, CLASS, A
	WinGetTITLE, TITLE_VAR, A

	XR_1=0
	IF INSTR(CLASS,"Chrome_WidgetWin_1")
		XR_1=1
	IF INSTR(CLASS,"MozillaWindowClass")
		XR_1=1

	XR_2=0
	IF INSTR(TITLE_VAR,"Rain Alarm - Google Chrome")
		XR_2=1
	IF INSTR(TITLE_VAR,"Rain Alarm - Mozilla Firefox")
		XR_2=1

	IF XR_1>0
		IF XR_2>0
		{
			SENDINPUT {F5}
			; SOUNDBEEP 1000,50
		}
		
RETURN

AUTO_RELOAD_FACEBOOK_QUICK_SUB_DELAY:
	AUTO_RELOAD_FACEBOOK_QUICK_SUB_DELAY_VAR=FALSE
RETURN

AUTO_RELOAD_FACEBOOK_QUICK_SUB:
	; ---------------------------------------------------
	; IF IT WASN'T ON FACEBOOK AND THEN IT IS ON THAT 
	; SITE AND THEN HERE IS THE CODE TO REFRESH
	; ---------------------------------------------------
	; TIMER REQUIRED FOR NOT TOO QUICK
	
	WinGetTITLE, TITLE_VAR, A

	AUTO_RELOAD_FACEBOOK_VAR=0

	IF INSTR(TITLE_VAR,"Your Notifications - Google Chrome")
		AUTO_RELOAD_FACEBOOK_VAR=1
	;Facebook | Error - Google Chrome
	IF INSTR(TITLE_VAR,"Facebook | Error - Google Chrome")
		AUTO_RELOAD_FACEBOOK_VAR=1
	IF INSTR(TITLE_VAR,"Privacy error - Google Chrome")
		AUTO_RELOAD_FACEBOOK_VAR=1

		
		
	IF OLD_AUTO_RELOAD_FACEBOOK_VAR<>%AUTO_RELOAD_FACEBOOK_VAR%
	IF AUTO_RELOAD_FACEBOOK_VAR=0
	{
		AUTO_RELOAD_FACEBOOK_QUICK_SUB_DELAY_VAR=TRUE
		SETTIMER AUTO_RELOAD_FACEBOOK_QUICK_SUB_DELAY, 4000
	}
	
		
	IF OLD_AUTO_RELOAD_FACEBOOK_VAR<>%AUTO_RELOAD_FACEBOOK_VAR%
		IF AUTO_RELOAD_FACEBOOK_VAR=1
			IF AUTO_RELOAD_FACEBOOK_QUICK_SUB_DELAY_VAR=FALSE
			{
				SENDINPUT {F5}
				SLEEP 4000
				;WINWAIT Your Notifications - Google Chrome
				AUTO_RELOAD_FACEBOOK_QUICK_SUB_DELAY_VAR=TRUE
				SETTIMER AUTO_RELOAD_FACEBOOK_QUICK_SUB_DELAY, 10000
			}
		
	OLD_AUTO_RELOAD_FACEBOOK_VAR=%AUTO_RELOAD_FACEBOOK_VAR%
		
RETURN
		

AUTO_RELOAD_FACEBOOK:

	If (A_TimeIdle < 8000)
	{
		RETURN
	}
	
	WinGetCLASS, CLASS, A
	WinGetTITLE, TITLE_VAR, A

	XR_1=0
	IF INSTR(CLASS,"Chrome_WidgetWin_1")
		XR_1=1

	XR_2=0
	IF INSTR(TITLE_VAR,"Your Notifications - Google Chrome")
		XR_2=1
	IF INSTR(TITLE_VAR,"Facebook | Error - Google Chrome")
		XR_2=1
	IF INSTR(TITLE_VAR,"Privacy error - Google Chrome")
		XR_2=1
		


	IF XR_1>0
		IF XR_2>0
		{
			SENDINPUT {F5}
			; SOUNDBEEP 1000,50
		}
		
RETURN





;# ------------------------------------------------------------------
TIMER_PREVIOUS_INSTANCE:
SETTIMER TIMER_PREVIOUS_INSTANCE,10000

if ScriptInstanceExist()
{
	Exitapp
}
return

ScriptInstanceExist() {
	static title := " - AutoHotkey v" A_AhkVersion
	dhw := A_DetectHiddenWindows
	DetectHiddenWindows, On
	WinGet, match, List, % A_ScriptFullPath . title
	DetectHiddenWindows, % dhw
	return (match > 1)
	}
Return

;# ------------------------------------------------------------------
EOF:                           ; on exit
ExitApp     
;# ------------------------------------------------------------------

;# ------------------------------------------------------------------
ExitFunc(ExitReason, ExitCode)
{
    if ExitReason not in Logoff,Shutdown
    {
        ;MsgBox, 4, , Are you sure you want to exit?
        ;IfMsgBox, No
        ;    return 1  ; OnExit functions must return non-zero to prevent exit.
    }
    ; Do not call ExitApp -- that would prevent other OnExit functions from being called.
}

class MyObject
{
    Exiting()
    {
        ;
        ;MsgBox, MyObject is cleaning up prior to exiting...
        /*
        this.SayGoodbye()
        this.CloseNetworkConnections()
        */
    }
}
;# ------------------------------------------------------------------
; exit the app
