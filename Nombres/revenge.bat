set t=%~1
set tf=%~2
set ext=%~3
:revenge
For /l %%c in (1,1,9) do ren "Revenge%t%0%%c*.%ext%" "Revenge %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "revenge%t%%%c*.%ext%" "Revenge %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto revenge