set t=%~1
set tf=%~2
set ext=%~3
:Apocalipsis en el instituto
For /l %%c in (1,1,9) do ren "High.School.Of.The.Dead.%t%x0%%c.DVD.XviD.[www.DivxTotaL.com].%ext%" "Apocalipsis en el instituto %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "High.School.Of.The.Dead.%t%x%%c.DVD.XviD.[www.DivxTotaL.com].%ext%" "Apocalipsis en el instituto %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "High.School.Of.The.Dead.%t%x0%%c.[[Reparado].DVD.XviD.[www.DivxTotaL.com].%ext%" "Apocalipsis en el instituto %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "High.School.Of.The.Dead.%t%x%%c.[[Reparado].DVD.XviD.[www.DivxTotaL.com].%ext%" "Apocalipsis en el instituto %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto Apocalipsis en el instituto