set t=%~1
set tf=%~2
set ext=%~3
:Boardwalk Empire
For /l %%c in (1,1,9) do ren "Boardwalk Empire%t%0%%c *.%ext%" "Boardwalk Empire %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Boardwalk Empire%t%%%c *.%ext%" "Boardwalk Empire %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Boardwalk Empire%t%0%%c.%ext%" "Boardwalk Empire %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Boardwalk Empire%t%%%c.%ext%" "Boardwalk Empire %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Boardwalk Empire*Cap.%t%0%%c*.%ext%" "Boardwalk Empire %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Boardwalk Empire*Cap.%t%%%c*.%ext%" "Boardwalk Empire %t%%%c.%ext%77
For /l %%c in (1,1,9) do ren "Boardwalk.Empire.%t%x0%%c*.%ext%" "Boardwalk Empire %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Boardwalk.Empire.%t%x%%c*.%ext%" "Boardwalk Empire %t%%%c.%ext%



if not %t% gtr %tf% set /a t=%t%+1 & goto Boardwalk Empire