set t=%~1
set tf=%~2
set ext=%~3
:Roma criminal
For /l %%c in (1,1,9) do ren "Roma.Criminal.%t%x0%%c.DVB.XviD.[www.DivxTotaL.com].%ext%" "Roma criminal %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Roma.Criminal.%t%x%%c.DVB.XviD.[www.DivxTotaL.com].%ext%" "Roma criminal %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Roma.Criminal.%t%x0%%c.DVD.XviD.[www.DivxTotaL.com].%ext%" "Roma criminal %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Roma.Criminal.%t%x%%c.DVD.XviD.[www.DivxTotaL.com].%ext%" "Roma criminal %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Roma.Criminal.%t%x0%%c.DVB.XviD.www.DivxTotaL.com].%ext%" "Roma criminal %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Roma.Criminal.%t%x%%c.DVB.XviD.www.DivxTotaL.com].%ext%" "Roma criminal %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Roma Criminal %t%x0%%c By aday.%ext%" "Roma criminal %t%0%%c.%ext%"
For /l %%c in (1,1,9) do ren "Roma Criminal - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.pctestrenos.com].%ext%" "Roma criminal %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Roma Criminal - Temp.%t% [HDTV][Cap.%t%%%c][Spanish][www.pctestrenos.com].%ext%" "Roma criminal %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto Roma criminal