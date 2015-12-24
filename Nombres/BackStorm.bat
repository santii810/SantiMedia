set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "b*ckst*rm*%t%0%%c*.%ext%" "BackStorm %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "b*ckst*rm*%t%%%c*.%ext%" "BackStorm %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "backstrom*%t%0%%c*.%ext%" "BackStorm %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "backstrom*%t%%%c*.%ext%" "BackStorm %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "bst%t%0%%c*.%ext%" "BackStorm %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "bst%t%%%c*.%ext%" "BackStorm %t%%%c.%ext%"
if not %t% gtr %tf% set /a t=%t%+1 & goto inicio