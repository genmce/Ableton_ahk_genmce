

; =============== automatic mouse clicks toolbar TESTING
	
	
	` & q::  ;Testing toolbar = WORKS! SET RECORD Quantization = 16TH DOTTED TRIPLET
	{
		ControlClick, x65 y45,,,left,1, NA 	; Sends a click to the button at coordinates
			sleep, 10
		send,{down 22}
			sleep 10
		send, {enter}
		send, {down 8} ; 6 = 16th 8 = 16th trip and dotted
		;sleep, 800 ; this long just so I can see it happen
		;send, {enter} ; reenable for automatic selection
		return
	}

