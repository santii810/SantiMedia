set t=%~1
set tf=%~2
set ext=%~3
:Rehenes
For /l %%c in (1,1,9) do ren "Hostages%t%0%%c [www.newpct.com].%ext%" "Rehenes %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hostages%t%%%c [www.newpct.com].%ext%" "Rehenes %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hostages%t%0%%c [wwwnewpct.com].%ext%" "Rehenes %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hostages%t%%%c [wwwnewpct.com].%ext%" "Rehenes %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hostages%t%0%%c [www.mewpct.com].%ext%" "Rehenes %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hostages%t%%%c [www.mewpct.com].%ext%" "Rehenes %t%%%c.%ext%"


 
 
if not %t% gtr %tf% set /a t=%t%+1 & goto Rehenes