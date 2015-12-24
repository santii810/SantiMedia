set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Refugiados%t%0%%c*.%ext%" "Refugiados %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Refugiados%t%%%c*.%ext%" "Refugiados %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Ref%t%0%%c*.%ext%" "Refugiados %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Ref%t%%%c*.%ext%" "Refugiados %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto inicio