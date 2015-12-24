set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "got*%t%0%%c*.%ext%" "Gotham %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "got*%t%%%c*.%ext%" "Gotham %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "gtham*%t%0%%c*.%ext%" "Gotham %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "gtham*%t%%%c*.%ext%" "Gotham %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio