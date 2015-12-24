set t=%~1
set tf=%~2
set ext=%~3
:Wilfred
For /l %%c in (1,1,9) do ren "Wilfred - Temporada %t% [HDTV][Cap. %t%0%%c][Espa¤ol Castellano][www.newpc.com].%ext%" "Wilfred %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Wilfred - Temporada %t% [HDTV][Cap. %t%%%c][Espa¤ol Castellano][www.newpc.com].%ext%" "Wilfred %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "wilfred - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Wilfred %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "wilfred - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Wilfred %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Wilfred - Temporada %t% [HDTV][Cap.%t%0%%c_FINAL][Espa¤ol Castellano][www.newpct.com].%ext%" "Wilfred %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Wilfred - Temporada %t% [HDTV][Cap.%t%%%c_FINAL][Espa¤ol Castellano][www.newpct.com].%ext%" "Wilfred %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Wilfred%t%0%%c [www.newpct.com].%ext%" "Wilfred %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Wilfred%t%%%c [www.newpct.com].%ext%" "Wilfred %t%%%c.%ext%"




if not %t% gtr %tf% set /a t=%t%+1 & goto Wilfred