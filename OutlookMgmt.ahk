/*
 *	Adds keyboard navigaton to Outlook 2010
 *	Toggle navigation mode using 'n'
 *	Untoggle navigation mode using 'Esc'
 */
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

; Toggle navigation mode
; ======================
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

; Navigation
; ==========
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

; Action
; ======
*i:: ; Refresh view
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Blind}+Insert
	}
	else {
		Send, {Blind}i
	}
return
*r:: ; Refresh view
	if(olNavMode && focused="SUPERGRID2"){
		Send, {Blind}{F5}
	}
	else {
		Send, {Blind}r
	}
return
*q:: ; Mark selected item(s) as read
	if(olNavMode && focused="SUPERGRID2"){
		Send, ^q
	}
	else {
		Send, {Blind}q
	}
return

; SORT VIEW
; =========
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

; Quick access toolbar
; ====================
*1::
	if(olNavMode && focused="SUPERGRID2"){
		Send, ^+1
	}
	else {
		Send, {Blind}1
	}
return
*2::
	if(olNavMode && focused="SUPERGRID2"){
		Send, ^+2
	}
	else {
		Send, {Blind}2
	}
return
*3::
	if(olNavMode && focused="SUPERGRID2"){
		Send, ^+3
	}
	else {
		Send, {Blind}3
	}
return
