set t=%~1
set tf=%~2
set ext=%~3
:Sleepy Hollow
For /l %%c in (1,1,9) do ren "Sleepy Hollow%t%0%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Sleepy Hollow%t%%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "SleepyHollow%t%0%%c [ww.newpct.com].%ext%" "Sleepy Hollow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "SleepyHollow%t%%%c [ww.newpct.com].%ext%" "Sleepy Hollow %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "SleepyHollow%t%0%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "SleepyHollow%t%%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "SleeHollow%t%0%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "SleeHollow%t%%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "SleepHollow%t%0%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "SleepHollow%t%%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "SleHollow%t%0%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "SleHollow%t%%%c [www.newpct.com].%ext%" "Sleepy Hollow %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "SleHollow%t%0%%c720p [www.newpct.com].%ext%" "Sleepy Hollow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "SleHollow%t%%%c720p [www.newpct.com].%ext%" "Sleepy Hollow %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Sle?Hollow%t%0%%c720p [www.newpct.com].%ext%" "Sleepy Hollow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Sle?Hollow%t%%%c720p [www.newpct.com].%ext%" "Sleepy Hollow %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Sleepy Hollow %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Sleepy Hollow %t%%%c.%ext%"




if not %t% gtr %tf% set /a t=%t%+1 & goto Sleepy Hollow