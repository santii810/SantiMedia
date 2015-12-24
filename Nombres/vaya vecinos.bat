set t=%~1
set tf=%~2
set ext=%~3
:Vaya Vecinos
For /l %%c in (1,1,9) do ren "Valla Vecinos - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Valla Vecinos - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Vaya Vecinos - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Vaya Vecinos - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "VayaVecinos%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "VayaVecinos%t%%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Vayecinos%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Vayecinos%t%%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "VayVcns%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "VayVcns%t%%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "VayVeci%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "VayVeci%t%%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "VayVecin%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "VayVecin%t%%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Vayvecino%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Vayvecino%t%%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "VayVecis%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "VayVecis%t%%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "VyVcns%t%0%%c[www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "VyVcns%t%%%c[www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "VayVecinos%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "VayVecinos%t%%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "VVecinos%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "VVecinos%t%0%%c [www.newpct.com].%ext%" "Vaya Vecinos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Vaya Vecinos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Vaya Vecinos %t%%%c.%ext%"





if not %t% gtr %tf% set /a t=%t%+1 & goto Vaya Vecinos