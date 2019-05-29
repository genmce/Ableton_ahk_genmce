

; =============== automatic mouse clicks toolbar ;===============
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
		sleep, 300 	; this long just so I can see it happen   	; make this slower if need you wish to see it work
		send, {enter} 	; reenable for automatic selection		;
		return
	}

