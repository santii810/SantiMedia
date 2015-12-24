set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "El.Ultimo.Hombre.En.La.Tierra*%t%x0%%c*.%ext%" "El ultimo hombre en la tierra %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "El.Ultimo.Hombre.En.La.Tierra*%t%x%%c*.%ext%" "El ultimo hombre en la tierra %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio