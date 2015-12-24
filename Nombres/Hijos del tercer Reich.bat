set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "HijosTercerReich%t%0%%c [www.newpct.com].%ext%" "Hijos del tercer Reich %t%0%%c.%ext%"
For /l %%c in (1,1,9) do ren "HijosTerReich%t%0%%c [www.newpct.com].%ext%" "Hijos del tercer Reich %t%0%%c.%ext%"
For /l %%c in (1,1,9) do ren "HijosTReich%t%0%%c [www.newpct.com].%ext%" "Hijos del tercer Reich %t%0%%c.%ext%"
if not %t% gtr %tf% set /a t=%t%+1 & goto inicio