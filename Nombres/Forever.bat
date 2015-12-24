set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "For%t%0%%c*.%ext%" "Forever %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "For%t%%%c*.%ext%" "Forever %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Forever*%t%0%%c*.%ext%" "Forever %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Forever*%t%%%c*.%ext%" "Forever %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio