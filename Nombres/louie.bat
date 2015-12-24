set t=%~1
set tf=%~2
set ext=%~3
:Louie
For /l %%c in (1,1,9) do ren "L%t%0%%c[www.newpct.com].%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "L%t%%%c[www.newpct.com].%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Lo%t%0%%c.%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Lo%t%%%c.%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Lou%t%0%%c.%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Lou%t%%%c.%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Louie - Temp.%t% - [HDTV][Cap.%t%0%%c][Spanish].%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Louie - Temp.%t% - [HDTV][Cap.%t%%%c][Spanish].%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Louie - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish].%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Louie - Temp.%t% [HDTV][Cap.%t%%%c][Spanish].%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Louie - Temp.%t% [HDTV][Cap.%t%0%%c][Spanish][www.newpct.com].%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Louie - Temp.%t% [HDTV][Cap.%t%%%c][Spanish][www.newpct.com].%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Louie - Temp.%t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Louie - Temp.%t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Louie - Temp.%t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano].%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Louie - Temp.%t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano].%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Louie - Temp.%t% [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct].%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Louie - Temp.%t% [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct].%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Louie%t%0%%c[www.newpct.com].%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Louie%t%%%c[www.newpct.com].%ext%" "Louie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Luie%t%0%%c[www.newpct.com].%ext%" "Louie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Luie%t%%%c[www.newpct.com].%ext%" "Louie %t%%%c.%ext%"



if not %t% gtr %tf% set /a t=%t%+1 & goto Louie