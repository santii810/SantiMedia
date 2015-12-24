set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "JePrivateSchoolGirl%t%0%%c [www.newpct.com].%ext%" "Jamie Private School Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "JePrivateSchoolGirl%t%%%c [www.newpct.com].%ext%" "Jamie Private School Girl %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Jamie Private School Girl  %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Jamie Private School Girl  %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio