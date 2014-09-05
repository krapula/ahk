/*
 *	Adds keyboard navigaton to Outlook 2010
 *	Toggle navigation mode using 'n'
 *	Untoggle navigation mode using 'Esc'
 */
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#ifwinactive, ahk_exe outlook.exe
olNavMode:=false
n::
	ControlGetFocus, focused
	if(olNavMode=0 && focused="SUPERGRID2"){
		olNavMode:=!olNavMode
	}
	else {
		Send, {Blind}n
	}
return
SC001:: ; 'ESC'
	if(olNavMode=1 && focused="SUPERGRID2"){
		olNavMode:=!olNavMode
	}
	else {
		Send, {Blind}{Esc}
	}
return

*j:: ; Next item
	if(olNavMode && focused="SUPERGRID2"){ 
		Send, {Blind}{Down}
	}
	else {
		Send, {Blind}j
	}
return
*k:: ; Previous item
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Blind}{Up}
	}
	else {
		Send, {Blind}k
	}
return
*h:: ; Previous pane
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Blind}+{F6}
	}
	else {
		Send, {Blind}h
	}
return
*l:: ; Next pane
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Blind}{F6}
	}
	else {
		Send, {Blind}l
	}
return
*r:: ; Refresh view to get rid of read items
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Blind}{F5}
	}
	else {
		Send, {Blind}r
	}
return
*f::	; Sort view by From
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Alt}vabf
	}
	else {
		Send, {Blind}f
	}
return
*s::	; Sort view by Subject
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Alt}vabj
	}
	else {
		Send, {Blind}s
	}
return
*d::	; Sort view by Date
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Alt}vabd
	}
	else {
		Send, {Blind}d
	}
return
*a::	; Sort view by Folder
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Alt}vabl
	}
	else {
		Send, {Blind}a
	}
return
