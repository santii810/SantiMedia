set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "KLJ*%t%0%%c*.%ext%" "Killjoys %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "KLJ*%t%%%c*.%ext%" "Killjoys %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Killjoys*%t%0%%c*.%ext%" "Killjoys %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Killjoys*%t%%%c*.%ext%" "Killjoys %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio