set t=%~1
set tf=%~2
set ext=%~3
:Modern family
For /l %%c in (1,1,9) do ren "MF%t%0%%c*.%ext%" "Modern family %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MF%t%%%c*.%ext%" "Modern family %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MFa%t%0%%c*.%ext%" "Modern family %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MFa%t%%%c*.%ext%" "Modern family %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "MFamly%t%0%%c*.%ext%" "Modern family %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "MFamly%t%%%c*.%ext%" "Modern family %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto Modern family