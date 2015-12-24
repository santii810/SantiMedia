set t=%~1
set tf=%~2
set ext=%~3
:los simpson
For /l %%c in (1,1,9) do ren "Los simpson %t%x0%%c*.%ext%" "Los simpson %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Los simpson %t%x%%c*.%ext%" "Los simpson %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Los simpson*Cap.%t%0%%c*.%ext%" "Los simpson %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Los simpson*Cap.%t%%%c*.%ext%" "Los simpson %t%%%c.%ext%
For /l %%c in (1,1,9) do ren "Los.simpsom.%t%x0%%c.*.%ext%" "Los simpson %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Los.simpsom.%t%x%%c.*.%ext%" "Los simpson %t%%%c.%ext%
For /l %%c in (1,1,9) do ren "Lssmpsns%t%0%%c*.%ext%" "Los simpson %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Lssmpsns%t%%%c*.%ext%" "Los simpson %t%%%c.%ext%
For /l %%c in (1,1,9) do ren "LSimpson%t%0%%c [www.newpct.com].%ext%" "Los simpson %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LSimpson%t%%%c [www.newpct.com].%ext%" "Los simpson %t%%%c.%ext%
For /l %%c in (1,1,9) do ren "LSimpsons%t%0%%c [www.newpct.com].%ext%" "Los simpson %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LSimpsons%t%0%%c [www.newpct.com].%ext%" "Los simpson %t%%%c.%ext%
For /l %%c in (1,1,9) do ren "LS%t%0%%c*.%ext%" "Los simpson %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "LS%t%%%c*.%ext%" "Los simpson %t%%%c.%ext%
For /l %%c in (1,1,9) do ren "aa" "Los simpson %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "aa" "Los simpson %t%%%c.%ext%


if not %t% gtr %tf% set /a t=%t%+1 & goto los simpson