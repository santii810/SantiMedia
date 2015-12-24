set t=%~1
set tf=%~2
set ext=%~3
:Veep
For /l %%c in (1,1,9) do ren "Veep - Temporada %t% [HDTV][Cap.%t%0%%c][Spanish][2012][www.newpct.com].%ext%" "Veep %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Veep - Temporada %t% [HDTV][Cap.%t%%%c][Spanish][2012][www.newpct.com].%ext%" "Veep %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Veep - Temporada %t% [HDTV][Cap.%t%0%%c][espa¤ol Castellano][2012][www.newpct.com].%ext%" "Veep %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Veep - Temporada %t% [HDTV][Cap.%t%%%c][espa¤ol Castellano][2012][www.newpct.com].%ext%" "Veep %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Veep - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Veep %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Veep - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Veep %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Veep - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano].%ext%" "Veep %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Veep - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano].%ext%" "Veep %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Veep%t%0%%c [www.newpct.com].%ext%" "Veep %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Veep%t%%%c [www.newpct.com].%ext%" "Veep %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Vp%t%0%%c.%ext%" "Veep %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Vp%t%%%c.%ext%" "Veep %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto Veep