set t=%~1
set tf=%~2
set ext=%~3
:tronos
For /l %%c in (1,1,9) do ren "jdt%t%0%%c*.%ext%" "Juego de tronos %t%0%%c.%ext%"
For /l %%c in (10,1,10) do ren "jdt%t%%%c*.%ext%" "Juego de tronos %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "jgtr*%t%0%%c*.%ext%" "Juego de tronos %t%0%%c.%ext%"
For /l %%c in (10,1,10) do ren "jgtr*%t%%%c*.%ext%" "Juego de tronos %t%%%c.%ext%"


For /l %%c in (1,1,9) do ren "%t%x0%%c - *.mkv" "Juego de tronos %t%0%%c.%ext%"
For /l %%c in (10,1,10) do ren "%t%x0%%c - *.mkv" "Juego de tronos %t%%%c.%ext%"






if %t% lss %tf% set /a t=%t%+1 & goto tronos