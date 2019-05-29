/*
  This script contains two methods for changing vst presets/patches.
  The point is to be able to quickly audition presets.
  The plugin MUST have buttons to change presets.
  
  This script CANNOT be run by itself
  If you wish to use these in your script, copy the method after autoexec section of ahk file.
  
  Both methods require the vst gui to be open and active on forground. 
  Both methods require the name of the plugin - (window spy).
  Both methods use the x, y coordinates of the patch change buttons on plugin (window spy).
     These coordinates are from the plugin window and are accurate on my system YMMV...
  Both methods re-use the left and right arrow keys as hotkeys for ALL plugins patch/preset changes.
  The arrow keys are ONLY hotkeys when the plugin is open and the ACTIVE window.
  I use both methods in my script.
*/  

;------------------------------------ Method 1 -----------------------------------------  
	
; This method works with all plugins that have buttons to change presets.
; This method will move the mouse to location, then click the button.
; ALL Arturia plugin WINDOWS NEED TO BE AT 90% ZOOM if you use these x,y coords.
; You are welcome to find comfortable zoom level - then identify your own x,y coords and replace them in hotkey definition.

#IfWinActive Mini V3 		  ; If Mini V3 is active 
LEFT:: send {click, 730, 60}      ; left arrow key press moves the mouse to x,y coords and left clicks once - back patch
right::send {click, 780, 60}      ; right arrow key press moves the mouse to the x,y coord and left clicks once - forward patch
#IfWinActive 

#IfWinActive CS-80 V3 		  ; If CS-80 V3 is active window
LEFT:: send {click, 730, 60}      ; back patch
right::send {click, 780, 60}      ; forward patch
#IfWinActive 

#IfWinActive Farfisa V 		  ; If Farfisa V is active window
LEFT:: send {click, 730, 60}      ; back patch
right::send {click, 780, 60}      ; forward patch
#IfWinActive 

;------------------End Method 1 -----------------------------


; ----------------------------------- Method 2 -------------------------------------------

; This method calls the patchChange function, below, with x,y coords of button on plugin. 
; This method does NOT move your mouse - but it does click on the button.
; This method is faster and smoother.
; This method does NOT work with all plugins - all Arturia and lazysnake (there may be others) do NOT work - use method 1 for those.


#IfWinActive ragnarok         ; if this plugin window is active, on top - the below keys work for this plugin
Left:: patchChange(795, 75)   ; left arrow key - moves to previous patch/preset by pressing back arrow button on plugin
Right::patchChange(795, 95)   ; right arrow key - moves to next patch/preset
#IfWinActive                 

#IfWinActive monofury
Left:: patchChange(595, 380)
Right::patchChange(640, 380)
#IfWinActive

#IfWinActive Massive
Left:: patchChange(610, 75)
Right::patchChange(610, 55)
#IfWinActive

; you can keep on adding as many of these sections for as many plugins as you like - i have about 50, so far

;----------- Patch Changing function -----------

patchChange( x, y) 			  ; Function receives coordinates of patch button 
{
	;msgbox   x%x% y%y% ;%vst%	  ; for testing - to show that correct values are making it to the function
	SetControlDelay, -1
	ControlClick, x%x% y%y%,,,left,1, ; Sends a click to the button at coordinates
	return
}
;----------------------- End Method 2--------------------------
