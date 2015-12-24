set t=%~1
set tf=%~2
set ext=%~3
:Hart of Dixie
For /l %%c in (1,1,9) do ren "DctrEnAlbm%t%0%%c[www.newpct.com].%ext%" "Hart of Dixie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "DctrEnAlbm%t%%%c[www.newpct.com].%ext%" "Hart of Dixie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "DctrEnAlbm%t%0%%c[www.newpct.com].%ext%" "Hart of Dixie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "DctrEnAlbm%t%%%c[www.newpct.com].%ext%" "Hart of Dixie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Doctora En Alabama - Temporada 1 [HDTV][Cap.%t%0%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Hart of Dixie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Doctora En Alabama - Temporada 1 [HDTV][Cap.%t%%%c][Espa¤ol Castellano][www.newpct.com].%ext%" "Hart of Dixie %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Doctora.En.Alabama.%t%x0%%c.HDTV.XviD.[www.DivxTotaL.com].%ext%" "Hart of Dixie %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Doctora.En.Alabama.%t%x%%c.HDTV.XviD.[www.DivxTotaL.com].%ext%" "Hart of Dixie %t%%%c.%ext%"








if not %t% gtr %tf% set /a t=%t%+1 & goto Hart of Dixie