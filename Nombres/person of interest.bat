set t=%~1
set tf=%~2
set ext=%~3
:Person of interest
For /l %%c in (1,1,9) do ren "Person of Interest - Temp.%t% [HDTV][Cap.%t%0%%c]*.%ext% " "Person of interest %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Person of Interest - Temp.%t% [HDTV][Cap.%t%%%c]*.%ext% " "Person of interest %t%%%c.%ext%"





if not %t% gtr %tf% set /a t=%t%+1 & goto Person of interest