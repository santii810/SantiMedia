set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Mozart*%t%0%%c*.%ext%" "Mozart in the jungle %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Mozart*%t%%%c*.%ext%" "Mozart in the jungle %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MiTju*%t%0%%c*.%ext%" "Mozart in the jungle %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Mitju*%t%%%c*.%ext%" "Mozart in the jungle %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto inicio