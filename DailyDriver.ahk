/*
 *	A few small improvements.
 */

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

; Remaps
; ======
+CapsLock::CapsLock
CapsLock::Enter

RCtrl & l::Send, {Media_Play_Pause}
RCtrl & j::Send, {Media_Next}
RCtrl & k::Send, {Media_Prev}

::,.::[ ] 