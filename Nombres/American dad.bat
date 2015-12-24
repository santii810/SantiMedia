set t=%~1
set tf=%~2
set ext=%~3
:American dad
For /l %%c in (1,1,9) do ren "Padre Made In Usa - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.newpct.com].%ext%" "American dad %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Padre Made In Usa - Temp.%t% [HDTV][Cap.%t%%%c][Spanish][www.newpct.com].%ext%" "American dad %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Padre Made In Usa - Temp.%t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "American dad %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Padre Made In Usa - Temp.%t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "American dad %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Padre Made In USA - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.pctestrenos.com].%ext%" "American dad %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Padre Made In USA - Temp.%t% [HDTV][Cap.%t%%%c][Spanish][www.pctestrenos.com].%ext%" "American dad %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "PdrMdns%t%0%%c.%ext%" "American dad %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "PdrMdns%t%%%c.%ext%" "American dad %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Padre Made In USA - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.pctestrenos.com].%ext%" "American dad %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Padre Made In USA - Temp.%t% [HDTV][Cap.%t%%%c][Spanish][www.pctestrenos.com].%ext%" "American dad %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Padre Made In Usa - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish].%ext%" "American dad %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Padre Made In Usa - Temp.%t% [HDTV][Cap.%t%%%c][Spanish].%ext%" "American dad %t%%%c.%ext%"




if not %t% gtr %tf% set /a t=%t%+1 & goto American dad