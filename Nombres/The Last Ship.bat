set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "TLSh*%t%0%%c*" "The last ship %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TLSh*%t%%%c*" "The last ship %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TLS%t%0%%c*" "The last ship %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TLS%t%%%c*" "The last ship %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio