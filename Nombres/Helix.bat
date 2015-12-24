set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "He%t%0%%c*.%ext%" "Helix %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "He%t%%%c*.%ext%" "Helix %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hel%t%0%%c*.%ext%" "Helix %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hel%t%%%c*.%ext%" "Helix %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hx%t%0%%c*.%ext%" "Helix %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hx%t%%%c*.%ext%" "Helix %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Hlix*%t%0%%c*.%ext%" "Helix %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Hlix*%t%%%c*.%ext%" "Helix %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio