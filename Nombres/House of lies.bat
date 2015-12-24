set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "HouseLies%t%0%%c [www.newpct.com].%ext%" "House of lies %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "HouseLies%t%%%c [www.newpct.com].%ext%" "House of lies %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "HousefLies%t%0%%c [www.newpct.com].%ext%" "House of lies %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "HousefLies%t%0%%c [www.newpct.com].%ext%" "House of lies %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "House of lies %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "House of lies %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto inicio