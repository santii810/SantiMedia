set t=%~1
set tf=%~2
set ext=%~3
:The following
For /l %%c in (1,1,9) do ren "Thfollowi%t%0%%c *.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Thfollowi%t%%%c *.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Tfollowi%t%0%%c *.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Tfollowi%t%%%c *.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Tfollowing%t%0%%c *.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Tfollowing%t%%%c *.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Thfllwng%t%0%%c *.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Thfllwng%t%%%c *.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Thfollng%t%0%%c *.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Thfollng%t%%%c *.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Thefollowing%t%0%%c *.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Thefollowing%t%%%c *.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Thfollowi%t%0%%c.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Thfollowi%t%%%c.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Thefollo%t%0%%c.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Thefollo%t%%%c.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "The Following*Cap.%t%0%%c*.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "The Following*Cap.%t%%%c*.%ext%" "The following %t%%%c.%ext%
For /l %%c in (1,1,9) do ren "Following%t%0%%c *.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Following%t%%%c *.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TheFollow%t%0%%c *.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TheFollow%t%%%c *.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "The Following%t%0%%c *.%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "The Following%t%%%c *.%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TFollowing%t%0%%c720p [www.newpct.com].%ext%" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TFollowing%t%0%%c720p [www.newpct.com].%ext%" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "The following %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TFollowing%t%0%%c*.mkv" "The following %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TFollowing%t%%%c*.mkv" "The following %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto The following