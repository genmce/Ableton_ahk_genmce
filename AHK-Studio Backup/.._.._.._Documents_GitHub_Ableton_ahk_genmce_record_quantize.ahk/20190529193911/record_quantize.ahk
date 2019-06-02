; Written by genmce - see license
#SingleInstance, force
#NoEnv          ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode, fast
SetTitleMatchMode, 2
return

/*
	This is a working script - it should run and only do the one example below
*/

; =============== Click menu - set record quantize ;===============
; This opens the Edit menu, 
; clicks on record quantize
; clicks on 16th dotted triplet record quantize	

; I used window spy to get the control location
	
` & q::  ; SET RECORD Quantization = 16TH DOTTED TRIPLET
	{
		ControlClick, x65 y45,,,left,1, NA 	; Sends a click to the button at coordinates
			sleep, 10
		send,{down 22}
			sleep 10
		send, {enter}
		send, {down 8}  ; 6 = 16th 8 = 16th trip and dotted
		;sleep, 300 	; make this slower if need you wish to see it work
		;send, {enter} 	; reenable for automatic selection		
		return
	}
