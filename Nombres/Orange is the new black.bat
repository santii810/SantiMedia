set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Orange*%t%0%%c*.mkv" "Orange is the new black %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Orange*%t%%%c*.mkv" "Orange is the new black %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "OIT*Bla*%t%0%%c*.mkv" "Orange is the new black %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "OIT*Bla*%t%%%c*.mkv" "Orange is the new black %t%%%c.%ext%"
 For /l %%c in (1,1,9) do ren "ONBla*%t%0%%c*.mkv" "Orange is the new black %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "ONBla*%t%%%c*.mkv" "Orange is the new black %t%%%c.%ext%"
 

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio