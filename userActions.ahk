goto_hpalm()
{ 
	clipboard = 
	Send, ^c
	ClipWait, 2
;;	msgBox %clipboard%
	WinActivate, ahk_class IEFrame
	WinWaitActive,ahk_class IEFrame
	Send, !g
	Send, ^v
	Send, !s
	
;;	msgBox done

}