set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Los crimenes de Fjallbacka%t%0%%c [www.newpct.com].%ext%" "Los crimenes de Fjallbacka %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Los crimenes de Fjallbacka%t%%%c [www.newpct.com].%ext%" "Los crimenes de Fjallbacka %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "CrimenesFjallbacka%t%0%%c [www.newpct.com].%ext%" "Los crimenes de Fjallbacka %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "CrimenesFjallbacka%t%%%c [www.newpct.com].%ext%" "Los crimenes de Fjallbacka %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "LCrimenesFjallbacka%t%0%%c [www.newpct.com].%ext%" "Los crimenes de Fjallbacka %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LCrimenesFjallbacka%t%%%c [www.newpct.com].%ext%" "Los crimenes de Fjallbacka %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Los crimenes de Fjallbacka %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Los crimenes de Fjallbacka %t%%%c.%ext%"

 


if not %t% gtr %tf% set /a t=%t%+1 & goto inicio