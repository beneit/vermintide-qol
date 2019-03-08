; click ctrl-o to open chests once you're in the 'spoils of war' screen. This script operates in an endless loop so that you can open all of your chests no problem.
; click ctrl-o another time to break the loop. After that, pause or exit the script becuase ctrl-o will be continued to be overridden by this script.
; works in 1080p, windowed and full-screen


; We allow two threads so that the same hotkey breaks the loop
#MaxThreadsPerHotkey 2
^o:: 
#MaxThreadsPerHotkey 1
if keep_open_running = y
{
    keep_open_running = n  ; Signal the other thread to stop.
	;MsgBox Open chests stopped
    return
}
keep_open_running = y
Loop
{
    if keep_open_running = n  ; break signal received
        break
    click 980 1000
	sleep 3000
	if keep_open_running = n  ; break signal received
        break
	click 380 600
	if keep_open_running = n  ; break signal received
        break
	click 980 600
	if keep_open_running = n  ; break signal received
        break
	click 1580 600
	sleep 300
	if keep_open_running = n  ; break signal received
        break
	click 980 1000
	sleep 500
}

return