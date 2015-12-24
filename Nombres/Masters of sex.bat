set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Mastersex%t%0%%c [www.newpct.com].%ext% " "Masters of sex %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Mastersex%t%%%c [www.newpct.com].%ext% " "Masters of sex %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MastersSex%t%0%%c [www.newpct.com].%ext%" "Masters of sex %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MastersSex%t%%%c [www.newpct.com].%ext%" "Masters of sex %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Masters of sex %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Masters of sex %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio