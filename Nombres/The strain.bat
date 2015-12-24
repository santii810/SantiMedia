set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "tst%t%0%%c*.%ext%" "The strain %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "tst%t%%%c*.%ext%" "The strain %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "tstr%t%0%%c*.%ext%" "The strain %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "tstr%t%%%c*.%ext%" "The strain %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "thstrn*%t%0%%c*.%ext%" "The strain %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "thstrn*%t%%%c*.%ext%" "The strain %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio