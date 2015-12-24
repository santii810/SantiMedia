set t=%~1
set tf=%~2
set ext=%~3
:la cupula
For /l %%c in (1,1,9) do ren "LCupula%t%0%%c [www.newpct.com].%ext%" "La cupula %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LCupula%t%%%c [www.newpct.com].%ext%" "La cupula %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "LaCupula%t%0%%c [www-newpct.com].%ext%" "La cupula %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LaCupula%t%0%%c [www-newpct.com].%ext%" "La cupula %t%%%c.%ext%"




if not %t% gtr %tf% set /a t=%t%+1 & goto la cupula