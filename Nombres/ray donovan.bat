set t=%~1
set tf=%~2
set ext=%~3
:Ray Donovan
For /l %%c in (1,1,9) do ren "RDonovan%t%0%%c [www.newpct.com].%ext%" "Ray Donovan %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "RDonovan%t%%%c [www.newpct.com].%ext%" "Ray Donovan %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "RayDonovan%t%0%%c [www.newpct.com].%ext%" "Ray Donovan %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "RayDonovan%t%%%c [www.newpct.com].%ext%" "Ray Donovan %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto Ray Donovan