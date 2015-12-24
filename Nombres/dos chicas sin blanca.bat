set t=%~1
set tf=%~2
set ext=%~3
:dos chicas sin blanca
For /l %%c in (1,1,9) do ren "*CSB*%t%0%%c*.%ext%" "Dos chicas sin blanca %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "*CSB*%t%%%c*.%ext%" "Dos chicas sin blanca %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "*2Chicas*%t%0%%c*.%ext%" "Dos chicas sin blanca %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "*2Chicas*%t%%%c*.%ext%" "Dos chicas sin blanca %t%%%c.%ext%"

 
 



if not %t% gtr %tf% set /a t=%t%+1 & goto dos chicas sin blanca