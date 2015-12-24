set t=%~1
set tf=%~2
set ext=%~3
:hannibal

For /l %%c in (1,1,9) do ren "Hannib*%t%0%%c*.%ext%" "Hannibal %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hannib*%t%%%c*.%ext%" "Hannibal %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hannib*%t%0%%c.%ext%" "Hannibal %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hannib*%t%%%c.%ext%" "Hannibal %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto hannibal