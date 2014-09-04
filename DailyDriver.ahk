; Used and tested on Win7
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#SingleInstance force

;	# Window specific actions
;	=======================
#IfWinActive ahk_class CabinetWClass ;	open current folder in command prompt
+!d::
Send !d
Sleep 10
Send cmd{Enter}
return

#IfWinActive ;end window specific actions

;	Remaps
;	======
Capslock::Enter
+Capslock::Capslock
Ctrl & SC01A::Send, {Media_Prev}	; å [
Ctrl & SC01B::Send, {Media_Next}	; ¨ ]
Ctrl & SC02B::Send, {Media_Play_Pause}	; ' \
Ctrl & n::Send, {Volume_Down}
Ctrl & m::Send, {Volume_Up}
RWin & SC01A::Send, {Media_Prev}	; å [
RWin & SC01B::Send, {Media_Next}	; ¨ ]
RWin & SC02B::Send, {Media_Play_Pause}	; ' \
RWin & n::Send, {Volume_Down}
RWin & m::Send, {Volume_Up}

;	Shortcuts
;	=========
#w::Run, winword.exe
#x::Run, excel.exe
#p::Run, powerpnt.exe
#Enter::Run, cmd.exe

;	Replacements
;	============
::,.::[ ]

; WINDOWS KEY + H TOGGLES HIDDEN FILES
; ====================================
#h::
RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
If HiddenFiles_Status = 2 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
Else 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
send, {F5}
Return

; WINDOWS KEY + Y TOGGLES FILE EXTENSIONS
; =======================================
#y::
RegRead, HiddenFiles_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt
If HiddenFiles_Status = 1 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 0
Else 
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 1
send, {F5}
Return
