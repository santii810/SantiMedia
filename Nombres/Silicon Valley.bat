set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "SValley%t%0%%c*.avi" "Silicon Valley %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "SValley%t%%%c*" "Silicon Valley %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Silicon.Valley*%t%x0%%c*.avi" "Silicon Valley %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Silicon.Valley*%t%x%%c*" "Silicon Valley %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "SV*%t%x0%%c*.avi" "Silicon Valley %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "SV*%t%x%%c*" "Silicon Valley %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "SV*%t%0%%c*.avi" "Silicon Valley %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "SV*%t%%%c*" "Silicon Valley %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto inicio