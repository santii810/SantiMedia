set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "AALTitanes%t%0%%c*.avi" "Ataque a los titanes %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AALTitanes%t%%%c*.avi" "Ataque a los titanes %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AATitanes%t%0%%c*.avi" "Ataque a los titanes %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AATitanes%t%%%c*.avi" "Ataque a los titanes %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AA*Tita%t%0%%c*.avi" "Ataque a los titanes %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AA*Tita%t%%%c*.avi" "Ataque a los titanes %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio