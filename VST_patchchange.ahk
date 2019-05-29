#SingleInstance, force
#NoEnv          ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode, fast
SetTitleMatchMode, 2
return

/*
  This script will contain two methods for changing vst presets/patches.
  The point is to be able to quickly audition presets.
  
  This script CAN be run by itself
  If you wish to use these in your script put them after autoexec section of ahk file
  
  Both methods require the vst gui to be open and active on forground
  Both methods use the x, y coordinates of the patch change buttons on plugin (window spy)
    These coordinates are from the plugin window and are accurate on my system YMMV..
  Both methods re-use the left and right arrow keys as hotkeys for all plugins patch/preset changes
  The arrow keys are ONLY hotkeys when the plugin is open and the ACTIVE window
*/  

;------------------------------------ Method 1 -----------------------------------------  
	
  This method will move the mouse to location then click
	ALL Arturia plugin WINDOWS NEED TO BE AT 90% ZOOM if you use these x,y coords

#IfWinActive Mini V3 ;
LEFT:: send {click, 730, 60}      ; back patch
right::send {click, 780, 60}      ;forward patch
#IfWinActive 

#IfWinActive CS-80 V3 ;
LEFT:: send {click, 730, 60}      ; back patch
right::send {click, 780, 60}      ; forward patch
#IfWinActive 

#IfWinActive Farfisa V ;
LEFT:: send {click, 730, 60}      ; back patch
right::send {click, 780, 60}      ; forward patch
#IfWinActive 





; ----------------------------------- Method 2 -------------------------------------------

; This method calls the patchChange function, below, with x,y coords of button on plugin 
; This method does NOT move your mouse - but it does click on the button
; This method is faster and smoother
; This method does NOT work with all plugins - all Arturia and lazysnake do not work - use method 1


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

; =============== Patch Changing function ; ===============

patchChange( x, y) 					        ; Function receives coordinates of patch button 
{
	;msgbox   x%x% y%y% ;%vst%		    ; for testing - to show that correct values are making it to the function
	SetControlDelay, -1
	ControlClick, x%x% y%y%,,,left,1, ; Sends a click to the button at coordinates
	return
}
;----------------------- End Method 2--------------------------
