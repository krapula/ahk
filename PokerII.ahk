;	This is a Poker II style remap that can be used for those occasions where
;	the Poker II is not an option, like your laptop or when travelling.
;
;	- The Poker II programmability is excluded from scope.
;	- Uses scancodes to enable different languages/layouts being used.
;	- Tested on Windows 7 Professional.
;	- Verified for sv-SE & us-EN.
;	- Many thanks to stackoverflow on how to do toggling
;	  https://stackoverflow.com/questions/16315817/autohotkey-toggle-a-set-of-keybinds-on-and-off

#NoEnv		; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input 	; Recommended for new scripts due to its superior speed and reliability.

;	Create hotkeys for reference & toggling
;	=======================================
;	Hotkeys are only relevant when you want the ability to toggle a Fn-layer.
;	Normal Remappings don't require hotkeys but having a MyLabel helps following the functions.
;	See http://www.autohotkey.com/docs/commands/Hotkey.htm

; 					sv-SE	us-EN
Hotkey, w , MyUp, Off			;w	w
Hotkey, a , MyLt, Off			;a	a
Hotkey, s , MyDn, Off			;s	s
Hotkey, d , MyRg, Off			;d	d
Hotkey, y , MyCalc, Off			;y	y
Hotkey, i , MyInsert, Off		;i	i
Hotkey, p , MyPrntScrn, Off		;p	p
Hotkey, ä , MyPgUp, Off			;ä	'
Hotkey, ö , MyHome, Off			;ö	;
Hotkey, - , MyPgDn, Off			;-	/
Hotkey, . , MyEnd, Off			;.	.
Hotkey, 1 , MyF1, Off			;1	1
Hotkey, 2 , MyF2, Off			;2	2
Hotkey, 3 , MyF3, Off			;3	3
Hotkey, 4 , MyF4, Off			;4	4
Hotkey, 5 , MyF5, Off			;5	5
Hotkey, 6 , MyF6, Off			;6	6
Hotkey, 7 , MyF7, Off			;7	7
Hotkey, 8 , MyF8, Off			;8	8
Hotkey, 9 , MyF9, Off			;9	9
Hotkey, 0 , MyF10, Off			;0	0
Hotkey, + , MyF11, Off			;+	-
Hotkey, ´ , MyF12, Off			;´	=
Return

;	Toggle settings
;	===============
;	Add/Remove/uncomment specific keys or the whole section based on you desire to
;	toggle a Fn-layer for one-handed use.
RWin & Space::
KeyToggle:=!KeyToggle
Hotkey, w , % (KeyToggle ? "On": "Off")
Hotkey, a , % (KeyToggle ? "On": "Off")
Hotkey, s , % (KeyToggle ? "On": "Off")
Hotkey, d , % (KeyToggle ? "On": "Off")
Hotkey, y , % (KeyToggle ? "On": "Off")
Hotkey, i , % (KeyToggle ? "On": "Off")
Hotkey, p , % (KeyToggle ? "On": "Off")
Hotkey, ä , % (KeyToggle ? "On": "Off")
Hotkey, ö , % (KeyToggle ? "On": "Off")
Hotkey, - , % (KeyToggle ? "On": "Off")
Hotkey, . , % (KeyToggle ? "On": "Off")
Hotkey, 1 , % (KeyToggle ? "On": "Off")
Hotkey, 1 , % (KeyToggle ? "On": "Off")
Hotkey, 2 , % (KeyToggle ? "On": "Off")
Hotkey, 3 , % (KeyToggle ? "On": "Off")
Hotkey, 4 , % (KeyToggle ? "On": "Off")
Hotkey, 5 , % (KeyToggle ? "On": "Off")
Hotkey, 6 , % (KeyToggle ? "On": "Off")
Hotkey, 7 , % (KeyToggle ? "On": "Off")
Hotkey, 8 , % (KeyToggle ? "On": "Off")
Hotkey, 9 , % (KeyToggle ? "On": "Off")
Hotkey, 0 , % (KeyToggle ? "On": "Off")
Hotkey, + , % (KeyToggle ? "On": "Off")
Hotkey, ´ , % (KeyToggle ? "On": "Off")
Return

;	Bind keys to actions
;	====================
;	See http://www.autohotkey.com/docs/KeyList.htm
;	- Note that the two blocks are identical except for the trigger keys. Want to solve
;	  by a setting for trigger key. The duplicate is due to different keyboards choosing
;	  to remove either RWin or AppsKey and I encounter both.

§::Esc
								
;	   Scancode				;sv-SE	us-EN
RWin & SC029::Send, {Blind}§			;§	`
RWin & SC203::Send, {Media_Prev}		;h	h
RWin & SC024::Send, {Media_Next}		;j	j
RWin & SC025::Send, {Media_Play_Pause}		;k	k
RWin & SC031::Send, {Volume_Down}		;n	m
RWin & SC032::Send, {Volume_Up}			;m	,
RWin & SC033::Send, {Volume_Mute}		;,	.
RWin & SC00E::Send, {Blind}{Delete}		;BS	BS
RWin & SC02D::Send, {Blind}{AppsKey}		:x	x
RWin & SC01A::Send, {Blind}{ScrollLock}		;å	[
RWin & SC01B::Goto, MyPause			;¨	]
RWin & SC019::Send, MyPrntScrn			;p	p
RWin & SC011::Goto, MyUp			;w	w
RWin & SC01E::Goto, MyLt			;a	a
RWin & SC01F::Goto, MyDn			;s	s
RWin & SC020::Goto, MyRg			;d	d
RWin & SC015::Goto, MyCalc			;y	y
RWin & SC017::Goto, MyInsert			;i	i
RWin & SC027::Goto, MyHome			;ö	;
RWin & SC028::Goto, MyPgUp			;ä	'
RWin & SC034::Goto, MyEnd			;.	.
RWin & SC035::Goto, MyPgDn			;-	/
RWin & SC002::Goto, MyF1			;1	1
RWin & SC003::Goto, MyF2			;2	2
RWin & SC004::Goto, MyF3			;3	3
RWin & SC005::Goto, MyF4			;4	4
RWin & SC006::Goto, MyF5			;5	5
RWin & SC007::Goto, MyF6			;6	6
RWin & SC008::Goto, MyF7			;7	7
RWin & SC009::Goto, MyF8			;8	8
RWin & SC00A::Goto, MyF9			;9	9
RWin & SC00B::Goto, MyF10			;0	0
RWin & SC00C::Goto, MyF11			;+	-
RWin & SC00D::Goto, MyF12			;´	=

;		  Scancode			;sv-SE	us-EN
AppsKey & SC029::Send, {Blind}§			;§	`
AppsKey & SC203::Send, {Media_Prev}		;h	h
AppsKey & SC024::Send, {Media_Next}		;j	j
AppsKey & SC025::Send, {Media_Play_Pause}	;k	k
AppsKey & SC031::Send, {Volume_Down}		;n	m
AppsKey & SC032::Send, {Volume_Up}		;m	,
AppsKey & SC033::Send, {Volume_Mute}		;,	.
AppsKey & SC00E::Send, {Blind}{Delete}		;BS	BS
AppsKey & SC02D::Send, {Blind}{AppsKey}		;x	x
AppsKey & SC01A::Send, {Blind}{ScrollLock}	;å	[
AppsKey & SC019::Send, MyPrntScrn		;¨	]
AppsKey & SC01B::Goto, MyPause			;p	p
AppsKey & SC011::Goto, MyUp			;w	w
AppsKey & SC01E::Goto, MyLt			;a	a
AppsKey & SC01F::Goto, MyDn			;s	s
AppsKey & SC020::Goto, MyRg			;d	d
AppsKey & SC015::Goto, MyCalc			;y	y
AppsKey & SC017::Goto, MyInsert			;i	i
AppsKey & SC027::Goto, MyHome			;ö	;
AppsKey & SC028::Goto, MyPgUp			;ä	'
AppsKey & SC034::Goto, MyEnd			;.	.
AppsKey & SC035::Goto, MyPgDn			;-	/
AppsKey & SC002::Goto, MyF1			;1	1
AppsKey & SC003::Goto, MyF2			;2	2
AppsKey & SC004::Goto, MyF3			;3	3
AppsKey & SC005::Goto, MyF4			;4	4
AppsKey & SC006::Goto, MyF5			;5	5
AppsKey & SC007::Goto, MyF6			;6	6
AppsKey & SC008::Goto, MyF7			;7	7
AppsKey & SC009::Goto, MyF8			;8	8
AppsKey & SC00A::Goto, MyF9			;9	9
AppsKey & SC00B::Goto, MyF10			;0	0
AppsKey & SC00C::Goto, MyF11			;+	-
AppsKey & SC00D::Goto, MyF12			;´	=

;	Labels and actions
;	==================
MyUp:
Send, {Blind}{Up}
Return

MyLt:
Send, {Blind}{Left}
Return

MyDn:
Send, {Blind}{Down}
Return

MyRg:
Send, {Blind}{Right}
Return

MyCalc:
Run, calc.exe
Return

MyPause:
Send, {Blind}{Pause}
Return

MyInsert:
Send, {Blind}{Insert}
Return

MyPgDn:
Send, {Blind}{PgDn}
Return

MyPgUp:
Send, {Blind}{PgUp}
Return

MyEnd:
Send, {Blind}{End}
Return

MyHome:
Send, {Blind}{Home}
Return

MyPrntScrn:
Send, {Blind}{PrintScreen}
Return

MyF1:
Send, {Blind}{F1}
Return

MyF2:
Send, {Blind}{F2}
Return

MyF3:
Send, {Blind}{F3}
Return

MyF4:
Send, {Blind}{F4}
Return

MyF5:
Send, {Blind}{F5}
Return

MyF6:
Send, {Blind}{F6}
Return

MyF7:
Send, {Blind}{F7}
Return

MyF8:
Send, {Blind}{F8}
Return

MyF9:
Send, {Blind}{F9}
Return

MyF10:
Send, {Blind}{F10}
Return

MyF11:
Send, {Blind}{F11}
Return

MyF12:
Send, {Blind}{F12}
Return