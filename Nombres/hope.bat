set t=%~1
set tf=%~2
set ext=%~3
:Hope
For /l %%c in (1,1,9) do ren "Hope - Temp.%t% [HDTV][Cap.%t%0%%c]*.%ext%" "Hope %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hope - Temp.%t% [HDTV][Cap.%t%%%c]*.%ext%" "Hope %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hope - Temporada %t% [HDTV][Cap.%t%0%%c]*.%ext%" "Hope %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hope - Temporada %t% [HDTV][Cap.%t%0%%c]*.%ext%" "Hope %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hope.%t%x0%%c.HDTV.XviD.[www.DivxTotaL.com].%ext%" "Hope %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hope.%t%x%%c.HDTV.XviD.[www.DivxTotaL.com].%ext%" "Hope %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hope%t%0%%c [www.newpct.com].%ext%" "Hope %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hope%t%%%c [www.newpct.com].%ext%" "Hope %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hope%t%0%%c [ww.newpct.com].%ext%" "Hope %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hope%t%%%c [ww.newpct.com].%ext%" "Hope %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hope - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Hope %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hope - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Hope %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hope - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Catellano][www.newpct.com].%ext%" "Hope %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hope - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Catellano][www.newpct.com].%ext%" "Hope %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hope - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano].%ext%" "Hope %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hope - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano].%ext%" "Hope %t%%%c.%ext%"
 



if not %t% gtr %tf% set /a t=%t%+1 & goto Hope