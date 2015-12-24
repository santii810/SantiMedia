set t=%~1
set tf=%~2
set ext=%~3
:Dates
For /l %%c in (1,1,9) do ren "Dates%t%0%%c [www.newpct.com].%ext% " "Dates %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Dates%t%%%c [www.newpct.com].%ext% " "Dates %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto Dates