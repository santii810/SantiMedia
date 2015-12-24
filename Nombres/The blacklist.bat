set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "TBlacklist%t%0%%c [www.newpct.com].%ext%" "The blacklist %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TBlacklist%t%%%c [www.newpct.com].%ext%" "The blacklist %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TBlacklist%t%0%%c720p [www.newpct.com].%ext%" "The blacklist %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TBlacklist%t%%%c720p [www.newpct.com].%ext%" "The blacklist %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TBlacklist%t%0%%c720p.%ext%" "The blacklist %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TBlacklist%t%%%c720p.%ext%" "The blacklist %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TBlacklist%t%0%%c*.mkv" "The blacklist %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TBlacklist%t%%%c*.mkv" "The blacklist %t%%%c.%ext%"
rem For /l %%c in (1,1,9) do ren "aa" "The blacklist %t%0%%c.%ext%"
rem For /l %%c in (10,1,25) do ren "aa" "The blacklist %t%%%c.%ext%"




if not %t% gtr %tf% set /a t=%t%+1 & goto inicio