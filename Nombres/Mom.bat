set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Mom%t%0%%c*.%ext%" "Mom %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Mom%t%%%c*.%ext%" "Mom %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren  "Mm%t%0%%c*.%ext%" "Mom %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Mm%t%%%c*.%ext%" "Mom %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto inicio