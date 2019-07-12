goto_hpalm()
{ 
    run_hooks("pre_command_hook")
	clipboard = 
	Send, ^c
	ClipWait, 2
;;	msgBox %clipboard%
	WinActivate, ahk_class IEFrame
	WinWaitActive,ahk_class IEFrame
	Send, !g^v!s
;;	Send, ^v
;;	Send, !s
	
;;	msgBox done
	run_hooks("post_command_hook")
}

search_inside()
{ 
    run_hooks("pre_command_hook")
	clipboard = 
	Send, ^c
	ClipWait, 2
	if WinActive("ahk_exe OUTLOOK.EXE") {
		Send, {F3}^v
	}
	
	run_hooks("post_command_hook")
}

inc_indent()
{
    run_hooks("pre_command_hook")

	Send, +!{Right}
		
	run_hooks("post_command_hook")
}
dec_indent()
{
    run_hooks("pre_command_hook")

	Send, +!{Left}
		
	run_hooks("post_command_hook")
}

executeSpace(){

    run_hooks("pre_command_hook")
	
	if WinActive("ahk_exe Ssms.exe"){
		;tooltip, test
		Send, {F5}
	}
	
	
	
	run_hooks("post_command_hook")

}