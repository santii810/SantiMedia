set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "TMinProject%t%0%%c [www.newpct.com].%ext%" "The Mindy Proyect %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TMinProject%t%0%%c [www.newpct.com].%ext%" "The Mindy Proyect %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TMiProject%t%0%%c [www.newpct.com].%ext%" "The Mindy Proyect %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TMiProject%t%%%c [www.newpct.com].%ext%" "The Mindy Proyect %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TMindyProject%t%0%%c [www.newpct.com].%ext%" "The Mindy Proyect %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TMindyProject%t%%%c [www.newpct.com].%ext%" "The Mindy Proyect %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "The Mindy Proyect %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "The Mindy Proyect %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio