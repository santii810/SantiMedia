set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Forti*%t%0%%c*.%ext%" "Fortitude %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Forti*%t%%%c*.%ext%" "Fortitude %t%%%c.%ext%"
if not %t% gtr %tf% set /a t=%t%+1 & goto inicio