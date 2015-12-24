set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Grac*%t%0%%c*" "Graceland %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Grac*%t%%%c*" "Graceland %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "GLand*%t%0%%c*" "Graceland %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "GLand*%t%%%c*" "Graceland %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio