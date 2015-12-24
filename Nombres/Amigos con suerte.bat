set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "ACSU*%t%0%%c*" "Amigos con suerte %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "ACSU*%t%%%c*" "Amigos con suerte %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AmCS*%t%0%%c*" "Amigos con suerte %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AmCS*%t%%%c*" "Amigos con suerte %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio