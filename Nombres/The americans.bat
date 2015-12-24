set t=%~1
set tf=%~2
set ext=%~3
:The americans
For /l %%c in (1,1,9) do ren "TAmericans%t%0%%c [www.newpct.com].%ext%" "The americans %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TAmericans%t%%%c [www.newpct.com].%ext%" "The americans %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "The Americans%t%0%%c [www.newpct.com].%ext%" "The americans %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "The Americans%t%%%c [www.newpct.com].%ext%" "The americans %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TheAmericans%t%0%%c [www.newpct.com].%ext%" "The americans %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TheAmericans%t%%%c [www.newpct.com].%ext%" "The americans %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto The americans