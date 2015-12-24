set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "TMillers%t%0%%c [www.newpct.com].%ext%" "The Millers %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TMillers%t%%%c [www.newpct.com].%ext%" "The Millers %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "The Millers %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "The Millers %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio