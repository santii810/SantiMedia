set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "RH%t%0%%c*.%ext%" "Real humans %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "RH%t%%%c*.%ext%" "Real humans %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "ReH%t%0%%c*.%ext%" "Real humans %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "ReH%t%%%c*.%ext%" "Real humans %t%%%c.%ext%"
if not %t% gtr %tf% set /a t=%t%+1 & goto inicio