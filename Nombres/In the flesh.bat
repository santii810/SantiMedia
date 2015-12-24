set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "ITF%t%0%%c*.%ext%" "In the flesh %t%0%%c.%ext%"
rem For /l %%c in (10,1,25) do ren "ITF%t%%%c*.%ext%" "In the flesh %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio