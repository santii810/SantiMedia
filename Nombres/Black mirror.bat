set t=%~1
set tf=%~2
set ext=%~3
:Black Mirror
For /l %%c in (1,1,3) do ren "Black Mirror - Miniserie *[HDTV][Parte. %%c][Spanish].%ext%" "Black Mirror %t%%%c.%ext%"
For /l %%c in (1,1,3) do ren "BlackMirror%t%0%%c [www.newpct.com].%ext%" "Black Mirror %t%0%%c.%ext%"
For /l %%c in (1,1,3) do ren "BlckMirror%t%0%%c [www.newpct.com].%ext%" "Black Mirror %t%0%%c.%ext%"
For /l %%c in (1,1,3) do ren "BlckMrrr%t%0%%c [www.newpct.com].%ext%" "Black Mirror %t%0%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto Black Mirror