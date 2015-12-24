set t=%~1
set tf=%~2
set ext=%~3
:arrow
For /l %%c in (1,1,9) do ren "Arr*%t%0%%c*.%ext%" "Arrow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Arr*%t%%%c*.%ext%" "Arrow %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto arrow