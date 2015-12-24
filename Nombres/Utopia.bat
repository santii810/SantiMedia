set t=%~1
set tf=%~2
set ext=%~3
:Utopia
For /l %%c in (1,1,9) do ren "Utopia%t%0%%c *.%ext%" "Utopia %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Utopia%t%%%c *.%ext%" "Utopia %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Utopia%t%0%%c.%ext%" "Utopia %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Utopia%t%%%c.%ext%" "Utopia %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Uto*%t%0%%c*.%ext%" "Utopia %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Uto*%t%%%c*.%ext%" "Utopia %t%%%c.%ext%



if not %t% gtr %tf% set /a t=%t%+1 & goto Utopia