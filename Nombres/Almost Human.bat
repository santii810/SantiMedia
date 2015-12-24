set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "AlmostHuman%t%0%%c [www.newpct.com].%ext%" "Almost Human %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AlmostHuman%t%%%c [www.newpct.com].%ext%" "Almost Human %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AlmHuman%t%0%%c [www.newpct.com].%ext%" "Almost Human %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AlmHuman%t%%%c [www.newpct.com].%ext%" "Almost Human %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AlmoHuman%t%0%%c [www.newpct.com].%ext%" "Almost Human %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AlmoHuman%t%%%c [www.newpct.com].%ext%" "Almost Human %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AlmHuman%t%0%%c720p [www.newpct.com].%ext%" "Almost Human %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AlmHuman%t%%%c720p [www.newpct.com].%ext%" "Almost Human %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AlmostHuman%t%0%%c720p [www.newpct.com].%ext%" "Almost Human %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AlmostHuman%t%%%c720p [www.newpct.com].%ext%" "Almost Human %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AlmHuman%t%0%%c*.mkv" "Almost Human %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AlmHuman%t%%%c*.mkv" "Almost Human %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Almost Human %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Almost Human %t%%%c.%ext%"





if not %t% gtr %tf% set /a t=%t%+1 & goto inicio