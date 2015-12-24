set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "PB%t%0%%c*.%ext%" "Peaky Blinders %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "PB%t%%%c*.%ext%" "Peaky Blinders %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "PB*%t%x0%%c*.%ext%" "Peaky Blinders %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "PB*%t%x%%c*.%ext%" "Peaky Blinders %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio