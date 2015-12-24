set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "MentWork1%t%0%%c [www.newpct.com].%ext%" "Men at work %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MentWork1%t%%%c [www.newpct.com].%ext%" "Men at work %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MenWork%t%0%%c [www.newpct.com].%ext%" "Men at work %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MenWork%t%%%c [www.newpct.com].%ext%" "Men at work %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Men at work %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Men at work %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto inicio