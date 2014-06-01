#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#SingleInstance force

;	Remaps
;	======
+CapsLock::CapsLock
CapsLock::Enter

RCtrl & l::Send, {Media_Play_Pause}
RCtrl & j::Send, {Media_Next}
RCtrl & k::Send, {Media_Prev}

;	Replacements
;	============

::,.::[ ] 