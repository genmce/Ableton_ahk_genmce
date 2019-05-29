/*
	This method attributed to Author: Nathan McCallum (1vasari)
	It is modified - I like the browser open and I have used different keys to use ` + letter to trigger insert plugin.
	I also removed the return to focus portion
	This will NOT run stand-alone
*/
` & a::AddPlugin("Auto Filter_sweep_pan")
` & c::AddPlugin("Compressor")
` & d::AddPlugin("DrumRack_StudioDrummer Garage") ; custom for me 	
` & e::AddPlugin("EQ Eight")
` & g::AddPlugin("Guitar Rig 5")	
` & l::AddPlugin("Ping Pong Delay")
` & r::AddPlugin("Reverb")
` & s::AddPlugin("@k_sustain hold 1.0") 	  ; you won't find this it is custom for me

` & t::AddPlugin("Tuner") 

` & U::AddPlugin("Utility")


AddPlugin(plugin_name)  { 	; function called by hotkeys above to insert plugin
	Send, ^f
	Send, %plugin_name%
	Sleep, 300 ;		; Sleep while the search query completes
	Send, {Down}{Enter}
	;Send, ^!b 		; closes the browser - I like browser open
	return
}

