set t=%~1
set tf=%~2
set ext=%~3
:revolution
For /l %%c in (1,1,9) do ren "Revolution%t%0%%c*.%ext%" "Revolution %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Revolution%t%%%c*.%ext%" "Revolution %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Revolution%t%0%%c.%ext%" "Revolution %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Revolution%t%%%c.%ext%" "Revolution %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Revolution%t%0%%c720p [www.newpct.com].%ext%" "Revolution %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Revolution%t%%%c720p [www.newpct.com].%ext%" "Revolution %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Revolution720p%t%0%%c.mkv" "Revolution %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Revolution720p%t%%%c.mkv" "Revolution %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "aa" "Revolution %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Revolution %t%%%c.%ext%"

Revolution 222720p.mkv 

if not %t% gtr %tf% set /a t=%t%+1 & goto revolution