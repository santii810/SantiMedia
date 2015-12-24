set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Epi%t%0%%c*.%ext%" "Episodes %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Epi%t%%%c*.%ext%" "Episodes %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Epis%t%0%%c*.%ext%" "Episodes %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Epis%t%%%c*.%ext%" "Episodes %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Episodes*%t%0%%c*.%ext%" "Episodes %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Episodes*%t%%%c*.%ext%" "Episodes %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio