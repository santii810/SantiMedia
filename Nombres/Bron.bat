set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Bron%t%0%%c [www.newpct.com].%ext%" "Bron %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Bron%t%%%c [www.newpct.com].%ext%" "Bron %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Bron%t%0%%c [wwww.newpct.com].%ext%" "Bron %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Bron%t%%%c [wwww.newpct.com].%ext%" "Bron %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Bron %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Bron %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio