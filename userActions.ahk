goto_hpalm()
{ 
	clipboard = 
	Send, ^c
	ClipWait, 2
;;	msgBox %clipboard%
	WinActivate, ahk_class IEFrame
	tooltip, Test
	WinWaitActive,ahk_class IEFrame
	
	tooltip, Test2
	Send, !g
	Send, ^v
	Send, !s
	
;;	msgBox done

}