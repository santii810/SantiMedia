set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Pw%t%0%%c*.%ext%" "Powers %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Pw%t%%%c*.%ext%" "Powers %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Pwrs%t%0%%c*.%ext%" "Powers %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Pwrs%t%%%c*.%ext%" "Powers %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Pow%t%0%%c*.%ext%" "Powers %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Pow%t%%%c*.%ext%" "Powers %t%%%c.%ext%"
if not %t% gtr %tf% set /a t=%t%+1 & goto inicio