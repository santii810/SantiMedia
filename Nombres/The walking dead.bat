set t=%~1
set tf=%~2
set ext=%~3
:The Walking dead
For /l %%c in (1,1,9) do ren "TWD%t%0%%c*.%ext%" "The Walking dead %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TWD%t%%%c*.%ext%" "The Walking dead %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TWlkDad*%t%0%%c*.%ext%" "The Walking dead %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TWlkDad*%t%%%c*.%ext%" "The Walking dead %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto The Walking dead