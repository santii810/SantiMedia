set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "LR*%t%0%%c*.%ext%" "Les revenant %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LR*%t%%%c*.%ext%" "Les revenant %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "LRe*%t%0%%c*.%ext%" "Les revenant %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LRe*%t%%%c*.%ext%" "Les revenant %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Les.Revenants.%t%x0%%c*.%ext%" "Les revenant %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Les.Revenants.%t%x%%c*.%ext%" "Les revenant %t%%%c.%ext%"
if not %t% gtr %tf% set /a t=%t%+1 & goto inicio