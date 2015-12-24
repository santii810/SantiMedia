set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Residue.%t%x0%%c*.%ext%" "Residue %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Residue.%t%x%%c*.%ext%" "Residue %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Resid*%t%0%%c*.%ext%" "Residue %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Resid*%t%%%c*.%ext%" "Residue %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio