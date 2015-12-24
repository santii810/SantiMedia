set t=%~1
set tf=%~2
set ext=%~3
:Crosing lines
For /l %%c in (1,1,9) do ren "Crossinglines%t%0%%c [www.newpct.com].%ext%" "Crosing lines %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Crossinglines%t%%%c [www.newpct.com].%ext%" "Crosing lines %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Crosslines%t%0%%c [www.newpct.com].%ext%" "Crosing lines %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Crosslines%t%%%c [www.newpct.com].%ext%" "Crosing lines %t%%%c.%ext%"






if not %t% gtr %tf% set /a t=%t%+1 & goto Crosing lines