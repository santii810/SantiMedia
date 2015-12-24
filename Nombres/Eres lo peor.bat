set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "ElPe*%t%0%%c*.%ext%" "Eres lo peor %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "ElPe*%t%%%c*.%ext%" "Eres lo peor %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "ElP*%t%0%%c*.%ext%" "Eres lo peor %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "ElP*%t%%%c*.%ext%" "Eres lo peor %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Eres.lo.peor.*%t%x0%%c*.%ext%" "Eres lo peor %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Eres.lo.peor.*%t%x%%c*.%ext%" "Eres lo peor %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio