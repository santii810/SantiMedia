set t=%~1
set tf=%~2
set ext=%~3
:New Girl
For /l %%c in (1,1,9) do ren "NewGirl%t%0%%c*.%ext%" "New Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "NewGirl%t%%%c*.%ext%" "New Girl %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "New Girl - Temporada %t% [HDTV][Cap.%t%0%%c]*.%ext%" "New Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "New Girl - Temporada %t% [HDTV][Cap.%t%%%c]*.%ext%" "New Girl %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "NwGrl%t%0%%c.%ext%" "New Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "NwGrl%t%%%c.%ext%" "New Girl %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "New Girl %t%x0%%c.%ext%" "New Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "New Girl %t%x%%c.%ext%" "New Girl %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "NewGir%t%0%%c*.%ext%" "New Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "NewGir%t%%%c*.%ext%" "New Girl %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "New-Girl_%t%x0%%c.%ext%" "New Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "New-Girl_%t%x%%c.%ext%" "New Girl %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "NGir*%t%0%%c*.%ext%" "New Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "NGir*%t%%%c*.%ext%" "New Girl %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "NG%t%0%%c*.%ext%" "New Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "NG%t%%%c*.%ext%" "New Girl %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "New.Girl.%t%x0%%c*.%ext%" "New Girl %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "New.Girl.%t%x%%c*.%ext%" "New Girl %t%%%c.%ext%"




if not %t% gtr %tf% set /a t=%t%+1 & goto New Girl