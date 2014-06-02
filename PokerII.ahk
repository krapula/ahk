;	This is a Poker II style remap that can be used for those occasions where
;	the Poker II is not an option, like your laptop or when travelling.
;
;	- The Poker II programmability is excluded from scope.
;	- Uses scancodes of keys to enable different languages/layouts being used.
;	  See http://www.autohotkey.com/docs/misc/Remap.htm
;	- Tested on Windows 7 Professional.
;	- Verified for se-SV & us-EN.
;	- Toggling of Fn-layer (RCtrl + Space).
;	- Two different Fn-keys due to non-standard keyboard omission of RWin or AppsKey.
;	
;	Thanks to stackoverflow on how to do toggling
;	https://stackoverflow.com/questions/16315817/autohotkey-toggle-a-set-of-keybinds-on-and-off


#NoEnv		; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input 	; Recommended for new scripts due to its superior speed and reliability.

;	Create hotkeys for reference & toggling
;	=======================================
;	Hotkeys are only relevant when you want the ability to toggle a Fn-layer.
;	Normal Remappings don't require hotkeys but having a MyLabel helps following the functions.
;	See http://www.autohotkey.com/docs/commands/Hotkey.htm

; 					se-SV	us-EN
Hotkey, SC011 , MyUp, Off		;w	w
Hotkey, SC01E , MyLt, Off		;a	a
Hotkey, SC01F , MyDn, Off		;s	s
Hotkey, SC020 , MyRg, Off		;d	d

Hotkey, SC027 , MyHome, Off		;ö	;
Hotkey, SC034 , MyEnd, Off		;.	.
Hotkey, SC028 , MyPgUp, Off		;ä	'
Hotkey, SC035 , MyPgDn, Off		;-	/

Hotkey, SC015 , MyCalc, Off		;y	y
Hotkey, SC017 , MyInsert, Off		;i	i
Hotkey, SC019 , MyPrntScrn, Off		;p	p

Hotkey, SC002 , MyF1, Off		;1	1
Hotkey, SC003 , MyF2, Off		;2	2
Hotkey, SC004 , MyF3, Off		;3	3
Hotkey, SC005 , MyF4, Off		;4	4
Hotkey, SC006 , MyF5, Off		;5	5
Hotkey, SC007 , MyF6, Off		;6	6
Hotkey, SC008 , MyF7, Off		;7	7
Hotkey, SC009 , MyF8, Off		;8	8
Hotkey, SC00A , MyF9, Off		;9	9
Hotkey, SC00B , MyF10, Off		;0	0
Hotkey, SC00C , MyF11, Off		;+	-
Hotkey, SC00D , MyF12, Off		;´	=
Return

;	Toggle settings
;	===============
;	Add/Remove/uncomment specific keys or the whole section based on you desire to
;	toggle a Fn-layer for one-handed use.
RCtrl & Space::
KeyToggle:=!KeyToggle
Hotkey, SC011 , % (KeyToggle ? "On": "Off")
Hotkey, SC01E , % (KeyToggle ? "On": "Off")
Hotkey, SC01F , % (KeyToggle ? "On": "Off")
Hotkey, SC020 , % (KeyToggle ? "On": "Off")
Hotkey, SC015 , % (KeyToggle ? "On": "Off")
Hotkey, SC017 , % (KeyToggle ? "On": "Off")
Hotkey, SC019 , % (KeyToggle ? "On": "Off")
Hotkey, SC028 , % (KeyToggle ? "On": "Off")
Hotkey, SC027 , % (KeyToggle ? "On": "Off")
Hotkey, SC035 , % (KeyToggle ? "On": "Off")
Hotkey, SC034 , % (KeyToggle ? "On": "Off")
Hotkey, SC002 , % (KeyToggle ? "On": "Off")
Hotkey, SC003 , % (KeyToggle ? "On": "Off")
Hotkey, SC004 , % (KeyToggle ? "On": "Off")
Hotkey, SC005 , % (KeyToggle ? "On": "Off")
Hotkey, SC006 , % (KeyToggle ? "On": "Off")
Hotkey, SC007 , % (KeyToggle ? "On": "Off")
Hotkey, SC008 , % (KeyToggle ? "On": "Off")
Hotkey, SC009 , % (KeyToggle ? "On": "Off")
Hotkey, SC00A , % (KeyToggle ? "On": "Off")
Hotkey, SC00B , % (KeyToggle ? "On": "Off")
Hotkey, SC00C , % (KeyToggle ? "On": "Off")
Hotkey, SC00D , % (KeyToggle ? "On": "Off")
Return

;	Bind keys to actions
;	====================
;	See http://www.autohotkey.com/docs/KeyList.htm
;	- Note that the two blocks are identical except for the trigger keys. Want to solve
;	  by a setting for trigger key. The duplicate is due to different keyboards choosing
;	  to remove either RWin or AppsKey and I encounter both.

§::Esc

RWin & SC029::Send, {Blind}§			;§	`

RWin & SC011::Goto, MyUp			;w	w
RWin & SC01E::Goto, MyLt			;a	a
RWin & SC01F::Goto, MyDn			;s	s
RWin & SC020::Goto, MyRg			;d	d

RWin & SC027::Goto, MyHome			;ö	;
RWin & SC034::Goto, MyEnd			;.	.
RWin & SC028::Goto, MyPgUp			;ä	'
RWin & SC035::Goto, MyPgDn			;-	/

RWin & SC00E::Send, {Blind}{Delete}		;BS	BS
RWin & SC02D::Send, {Blind}{AppsKey}		:x	x
RWin & SC01A::Send, {Blind}{ScrollLock}		;å	[
RWin & SC01B::Goto, MyPause			;¨	]
RWin & SC019::Send, MyPrntScrn			;p	p
RWin & SC015::Goto, MyCalc			;y	y
RWin & SC017::Goto, MyInsert			;i	i

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

RWin & SC203::Send, {Media_Prev}		;h	h
RWin & SC024::Send, {Media_Next}		;j	j
RWin & SC025::Send, {Media_Play_Pause}		;k	k
RWin & SC031::Send, {Volume_Down}		;n	m
RWin & SC032::Send, {Volume_Up}			;m	,
RWin & SC033::Send, {Volume_Mute}		;,	.

AppsKey & SC029::Send, {Blind}§			;§	`

AppsKey & SC011::Goto, MyUp			;w	w
AppsKey & SC01E::Goto, MyLt			;a	a
AppsKey & SC01F::Goto, MyDn			;s	s
AppsKey & SC020::Goto, MyRg			;d	d

AppsKey & SC027::Goto, MyHome			;ö	;
AppsKey & SC034::Goto, MyEnd			;.	.
AppsKey & SC028::Goto, MyPgUp			;ä	'
AppsKey & SC035::Goto, MyPgDn			;-	/

AppsKey & SC00E::Send, {Blind}{Delete}		;BS	BS
AppsKey & SC02D::Send, {Blind}{AppsKey}		;x	x
AppsKey & SC01A::Send, {Blind}{ScrollLock}	;å	[
AppsKey & SC01B::Goto, MyPause			;p	p
AppsKey & SC019::Send, MyPrntScrn		;¨	]
AppsKey & SC015::Goto, MyCalc			;y	y
AppsKey & SC017::Goto, MyInsert			;i	i

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

AppsKey & SC203::Send, {Media_Prev}		;h	h
AppsKey & SC024::Send, {Media_Next}		;j	j
AppsKey & SC025::Send, {Media_Play_Pause}	;k	k
AppsKey & SC031::Send, {Volume_Down}		;n	m
AppsKey & SC032::Send, {Volume_Up}		;m	,
AppsKey & SC033::Send, {Volume_Mute}		;,	.

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

MyHome:
Send, {Blind}{Home}
Return

MyEnd:
Send, {Blind}{End}
Return

MyPgUp:
Send, {Blind}{PgUp}
Return

MyPgDn:
Send, {Blind}{PgDn}
Return

MyPause:
Send, {Blind}{Pause}
Return

MyPrntScrn:
Send, {Blind}{PrintScreen}
Return

MyCalc:
Run, calc.exe
Return

MyInsert:
Send, {Blind}{Insert}
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
