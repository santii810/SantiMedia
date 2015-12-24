set t=%~1
set tf=%~2
set ext=%~3
:homeland
rem numero 35
For /l %%c in (1,1,9) do ren "Homeland%t%0%%c [www.newpct.com].%ext%" "Homeland %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Homeland%t%%%c [www.newpct.com].%ext%" "Homeland %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto homeland