set t=%~1
set tf=%~2
set ext=%~3
:Bates Motel
For /l %%c in (1,1,9) do ren "B*Mot*%t%0%%c*.%ext%" "Bates Motel %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "B*Mot*%t%%%c*.%ext%" "Bates Motel %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "BM*%t%0%%c*.%ext%" "Bates Motel %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "BM*%t%%%c*.%ext%" "Bates Motel %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto Bates motel