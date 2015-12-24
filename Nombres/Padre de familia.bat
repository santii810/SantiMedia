set t=%~1
set tf=%~2
set ext=%~3
:Padre de familia
For /l %%c in (1,1,9) do ren "pdf*%t%0%%c*.%ext%" "Padre de familia %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "pdf*%t%%%c*.%ext%" "Padre de familia %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Padre de familia*%t%0%%c.%ext%" "Padre de familia %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Padre de familia*%t%%%c.%ext%" "Padre de familia %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto Padre de familia