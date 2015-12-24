set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Shameless - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.pctestrenos.com].%ext%" "Shameless %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Shameless - Temp.%t% [HDTV][Cap.%t%%%c][Spanish][www.pctestrenos.com].%ext%" "Shameless %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Shameless %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Shameless %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio