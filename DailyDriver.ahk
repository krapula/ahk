#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#SingleInstance force

;	Remaps
;	======
+CapsLock::CapsLock
CapsLock::Enter

RCtrl & SC01A::Send, {Media_Prev}	; å	[
RCtrl & SC01B::Send, {Media_Next}	; ¨	]
RCtrl & SC02B::Send, {Media_Play_Pause}	; '	\

;	Replacements
;	============

::,.::[ ] 
