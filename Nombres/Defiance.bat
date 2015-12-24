set t=%~1
set tf=%~2
set ext=%~3
:Defiance
For /l %%c in (1,1,9) do ren "Defiance%t%0%%c *.%ext%" "Defiance %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Defiance%t%%%c *.%ext%" "Defiance %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Defiance%t%0%%c.%ext%" "Defiance %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Defiance%t%%%c.%ext%" "Defiance %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto Defiance