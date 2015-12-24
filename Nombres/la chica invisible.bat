set t=%~1
set tf=%~2
set ext=%~3
:La Chica Invisible
For /l %%c in (1,1,9) do ren "La Chica Invisible (Awkward) - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.newpct.com].%ext%" "La Chica Invisible %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "La Chica Invisible (Awkward) - Temp.%t% [HDTV][Cap.%t%%%c][Spanish][www.newpct.com].%ext%" "La Chica Invisible %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Awkward - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish].%ext%" "La Chica Invisible %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Awkward - Temp.%t% [HDTV][Cap.%t%%%c][Spanish].%ext%" "La Chica Invisible %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Awkward.%t%x0%%c.HDTV.XviD.[www.DivxTotaL.com].%ext%" "La Chica Invisible %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Awkward.%t%x%%c.HDTV.XviD.[www.DivxTotaL.com].%ext%" "La Chica Invisible %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "La Chica Invisible (Awkward) - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "La Chica Invisible %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "La Chica Invisible (Awkward) - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "La Chica Invisible %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "LChcInvsbl%t%0%%c.%ext%" "La Chica Invisible %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LChcInvsbl%t%%%c.%ext%" "La Chica Invisible %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Awkward - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.newpct.com].%ext%" "La Chica Invisible %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Awkward - Temp.%t% [HDTV][Cap.%t%%%c][Spanish][www.newpct.com].%ext%" "La Chica Invisible %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "LChicaInvisible%t%0%%c*.%ext%" "La Chica Invisible %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LChicaInvisible%t%%%c*.%ext%" "La Chica Invisible %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "LChiInvisible%t%0%%c*.%ext%" "La Chica Invisible %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LChiInvisible%t%%%c*.%ext%" "La Chica Invisible %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "LCInvisible%t%0%%c*.%ext%" "La Chica Invisible %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LCInvisible%t%%%c*.%ext%" "La Chica Invisible %t%%%c.%ext%"
rem For /l %%c in (1,1,9) do ren "aa" "La Chica Invisible %t%0%%c.%ext%"
rem For /l %%c in (10,1,25) do ren "aa" "La Chica Invisible %t%%%c.%ext%"



 
 

if not %t% gtr %tf% set /a t=%t%+1 & goto La Chica Invisible