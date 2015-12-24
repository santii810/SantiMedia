set t=%~1
set tf=%~2
set ext=%~3

:Finales Felices
For /l %%c in (1,1,9) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%0%%c][Castellano].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%%%c][Castellano].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%0%%c][Castellano][www.newpct.com].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%%%c][Castellano][www.newpct.com].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%0%%c Final][Espa¤ol Castellano][www.newpct.com].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%%c Final][Espa¤ol Castellano][www.newpct.com].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Fnls.Flcs%t%0%%c.%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Fnls.Flcs%t%%%c.%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "FinalesF %t%0%%c [www.newpct.com].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "FinalesF %t%%%c [www.newpct.com].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Finales.Felices.%t%x0%%c.HDTV.XviD.[www.DivxTotaL.com].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Finales.Felices.%t%x%%c.HDTV.XviD.[www.DivxTotaL.com].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "FFelices%t%0%%c [www.newpct.com].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "FFelices%t%%%c [www.newpct.com].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%0%%c Final][Espa¤ol Castellano][www.newpct.com].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%%%c Final][Espa¤ol Castellano][www.newpct.com].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Finales Felices - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "FinalesF %t%0%%c [www.newpct.com]i.%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "FinalesF %t%%%c [www.newpct.com]i.%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "FinalesFe%t%0%%c [www.newpct.com].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "FinalesFe%t%0%%c [www.newpct.com].%ext%" "Finales Felices %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "FFinales%t%0%%c [www.newpct.com].%ext%" "Finales Felices %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "FFinales%t%%%c [www.newpct.com].%ext%" "Finales Felices %t%%%c.%ext%"

 


if not %t% gtr %tf% set /a t=%t%+1 & goto Finales Felices