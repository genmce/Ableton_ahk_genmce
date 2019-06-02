/*
	This method attributed to Author: Nathan McCallum (1vasari)  https://github.com/1vasari/Ableton.ahk
	It is modified - I like the browser open and I have used different keys to use ` + letter to trigger insert plugin.
	I also removed the return to focus portion
	This will NOT run stand-alone - copy code to your script after autoexec section
*/

#IfWinActive Ableton Live 			  ; Keys below ONLY works with Live is ACTIVE

` & c::AddPlugin("Compressor")                    ; hotkey passes Compressor to AddPlugin
` & e::AddPlugin("EQ Eight")
` & g::AddPlugin("Guitar Rig 5")	
` & l::AddPlugin("Ping Pong Delay")
` & r::AddPlugin("Reverb")
` & s::AddPlugin("@k_sustain hold 1.0") 	  ; you won't find this it is custom for me - use window spy to find title of plugin
` & t::AddPlugin("Tuner") 
` & U::AddPlugin("Utility")


AddPlugin(plugin_name)  { 	; function called by hotkeys above to insert plugin
	Send, ^f		; opens Live search text box
	Send, %plugin_name%	; sends plugin_name to Live search text box
	Sleep, 300 ;		; Sleep while the search query completes
	Send, {Down}{Enter}	; puts plugin on selected track
	;Send, ^!b 		; closes the browser - I like browser open
	return
}

#IfWinActive
