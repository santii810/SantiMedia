set t=%~1
set tf=%~2
set ext=%~3
:Breaking bad
if %activado%==n goto reparto
For /l %%c in (1,1,9) do ren "BrakingBad%t%0%%c [www.newpct.com].%ext%" "Breaking bad %t%0%%c.%ext%"
For /l %%c in (10,1,%l%) do ren "BrakingBad%t%%%c [www.newpct.com].%ext%" "Breaking bad %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "BreakingBad%t%0%%c [www.newpct.com].%ext%" "Breaking bad %t%0%%c.%ext%"
For /l %%c in (10,1,%l%) do ren "BreakingBad%t%%%c [www.newpct.com].%ext%" "Breaking bad %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "BreakiBad%t%0%%c.%ext%" "Breaking bad %t%0%%c.%ext%"
For /l %%c in (10,1,%l%) do ren "BreakiBad%t%%%c.%ext%" "Breaking bad %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "BreakBad%t%0%%c [www.newpct.com].%ext%" "Breaking bad %t%0%%c.%ext%"
For /l %%c in (10,1,%l%) do ren "BreakBad%t%%%c [www.newpct.com].%ext%" "Breaking bad %t%%%c.%ext%"

if not %t% gtr %limite% set /a t=%t%+1 & goto Breaking bad
