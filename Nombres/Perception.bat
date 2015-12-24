set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Perception - Temporada %t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Perception %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Perception - Temporada %t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Perception %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Perception %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Perception %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio