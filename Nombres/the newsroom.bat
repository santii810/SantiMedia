set t=%~1
set tf=%~2
set ext=%~3
:The newsroom
For /l %%c in (1,1,9) do ren "The Newsroom - Temporada %t% [HDTV][Cap.%t%0%%c][Espa�ol Castellano][www.newpct.com].%ext%" "The newsroom %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "The Newsroom - Temporada %t% [HDTV][Cap.%t%%%c][Espa�ol Castellano][www.newpct.com].%ext%" "The newsroom %t%%%c.%ext%"




if not %t% gtr %tf% set /a t=%t%+1 & goto The newsroom