set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Brchu%t%0%%c*" "Broadchurch %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Brchu%t%%%c*" "Broadchurch %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio