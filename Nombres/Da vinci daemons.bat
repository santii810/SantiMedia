set t=%~1
set tf=%~2
set ext=%~3
:Da vinci daemons
For /l %%c in (1,1,9) do ren "DVinci*Demons%t%0%%c720p [www.newpct.com].%ext%" "Da Vinci daemons %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "DVinci*Demons%t%%%c720p [www.newpct.com].%ext%.%ext%" "Da Vinci daemons %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "DVDemons%t%0%%c*.mkv" "Da Vinci daemons %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "DVDemons%t%%%c*.mkv" "Da Vinci daemons %t%%%c.%ext%"
rem For /l %%c in (1,1,9) do ren "aa" "Da Vinci daemons %t%0%%c.%ext%"
rem For /l %%c in (10,1,25) do ren "aa.%ext%" "Da Vinci daemons %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto Da vinci daemons