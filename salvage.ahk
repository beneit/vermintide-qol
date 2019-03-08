; Press ctrl-s to start loading the top two rows except bottom right item into the salvage fields. After items are loaded, salvage buttom is clicked. Interrupt that with 's' click.
; Autohotkey will override ctrl-s and s keys, so pause or exit script after use.
; works in 1080p windowed and full-screen

^s::
cont := true
click, right 1300 300
click, right 1380 300
click, right 1470 300
click, right 1570 300
click, right 1665 300
click, right 1300 400
click, right 1380 400
click, right 1470 400
click, right 1570 400
if (cont){
	click 960 880
}
return

s::
cont := false
return