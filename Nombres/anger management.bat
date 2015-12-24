set t=%~1
set tf=%~2
set ext=%~3
:Anger management
For /l %%c in (1,1,9) do ren "AngerManagement%t%0%%c [www.newpct.com].%ext%" "Anger management %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AngerManagement%t%%%c [www.newpct.com].%ext%" "Anger management %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AManagement%t%0%%c [www.newpct.com].%ext%" "Anger management %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AManagement%t%%%c [www.newpct.com].%ext%" "Anger management %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AManagement%t%0%%c [www.newpct.com].%ext%" "Anger management %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AManagement%t%%%c [www.newpct.com].%ext%" "Anger management %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AngManagement%t%0%%c [www.newpct.com].%ext%" "Anger management %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AngManagement%t%%%c [www.newpct.com].%ext%" "Anger management %t%%%c.%ext%"


 

if not %t% gtr %tf% set /a t=%t%+1 & goto Anger management