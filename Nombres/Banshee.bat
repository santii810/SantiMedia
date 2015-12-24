set t=%~1
set tf=%~2
set ext=%~3
:Banshee
For /l %%c in (1,1,9) do ren "Banshee%t%0%%c [www.newpct.com].%ext%" "Banshee %t% (0%%c).%ext%"
For /l %%c in (10,1,25) do ren "Banshee%t%%%c [www.newpct.com].%ext%" "Banshee %t% (%%c).%ext%"
For /l %%c in (1,1,9) do ren "Banshee%t%0%%c [www.newpct.com].%ext%" "Banshee %t% (0%%c).%ext%"
For /l %%c in (10,1,25) do ren "Banshee%t%%%c [www.newpct.com].%ext%" "Banshee %t% (%%c).%ext%"
For /l %%c in (1,1,9) do ren "Banshee%t%0%%c [www.newpct.com].%ext%" "Banshee %t% (0%%c).%ext%"
For /l %%c in (10,1,25) do ren "Banshee%t%%%c [www.newpct.com].%ext%" "Banshee %t% (%%c).%ext%"





if not %t% gtr %tf% set /a t=%t%+1 & goto Banshee