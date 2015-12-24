set t=%~1
set tf=%~2
set ext=%~3
:Misfits
For /l %%c in (1,1,9) do ren "Misfits - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.pctestrenos.com].%ext%" "Misfits %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Misfits - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.pctestrenos.com].%ext%" "Misfits %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Misfits - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish].%ext%" "Misfits %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Misfits - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish].%ext%" "Misfits %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto Misfits