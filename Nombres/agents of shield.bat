set t=%~1
set tf=%~2
set ext=%~3
:Agents of SHIELD
For /l %%c in (1,1,9) do ren "MarvelSHIELD%t%0%%c [www.newpct.com].%ext%" "Agents of SHIELD %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MarvelSHIELD%t%%%c [www.newpct.com].%ext%" "Agents of SHIELD %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MarvelAgent%t%0%%c [www.newpct.com].%ext%" "Agents of SHIELD %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MarvelAgent%t%%%c [www.newpct.com].%ext%" "Agents of SHIELD %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MarveAgents%t%0%%c [www.newpct.com].%ext%" "Agents of SHIELD %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MarveAgents%t%%%c [www.newpct.com].%ext%" "Agents of SHIELD %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MarvelsAgents%t%0%%c [www.newpct.com]*.%ext%" "Agents of shield %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MarvelsAgents%t%%%c [www.newpct.com]*.%ext%" "Agents of shield %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MAgentsSHIELD%t%0%%c [www.newpct.com].%ext%" "Agents of shield %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MAgentsSHIELD%t%%%c [www.newpct.com].%ext%" "Agents of shield %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MarvelAgents%t%0%%c720p [www.newpct.com].%ext%" "Agents of shield %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MarvelAgents%t%%%c720p [www.newpct.com].%ext%" "Agents of shield %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MarvelsAgenta%t%0%%c*.mkv" "Agents of shield %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MarvelsAgenta%t%%%c*.mkv" "Agents of shield %t%%%c.%ext%"
rem For /l %%c in (1,1,9) do ren "aa" "Agents of shield %t%0%%c.%ext%"
rem For /l %%c in (10,1,25) do ren "aa" "Agents of shield %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto Agents of SHIELD