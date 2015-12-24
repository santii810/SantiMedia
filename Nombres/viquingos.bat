set t=%~1
set tf=%~2
set ext=%~3
:vikingos
For /l %%c in (1,1,9) do ren "Vikingos%t%0%%c [www.newpct.com].%ext%" "Vikingos %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Vikingos%t%%%c [www.newpct.com].%ext%" "Vikingos %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto vikingos