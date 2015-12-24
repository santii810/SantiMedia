set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Nashville%t%0%%c [www.newpct.com].%ext%" "Nashville %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Nashville%t%%%c [www.newpct.com].%ext%" "Nashville %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Nashville%t%0%%c [www.mewpct.com].%ext%" "Nashville %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Nashville%t%%%c [www.mewpct.com].%ext%" "Nashville %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Nashville%t%0%%c [www,newpct.com].%ext%" "Nashville %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Nashville%t%%%c [www,newpct.com].%ext%" "Nashville %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Nashville %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Nashville %t%%%c.%ext%"




if not %t% gtr %tf% set /a t=%t%+1 & goto inicio