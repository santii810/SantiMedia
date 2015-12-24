set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "TF*%t%0%%c*.%ext%" "The Flash %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TF*%t%%%c*.%ext%" "The Flash %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "The Flash*%t%x0%%c*.%ext%" "The Flash %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "The Flash*%t%x%%c*.%ext%" "The Flash %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio