set t=%~1
set tf=%~2
set ext=%~3
:The big bang theory
For /l %%c in (1,1,9) do ren "TBigBT%t%0%%c*.%ext%" "The big bang theory %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TBigBT%t%%%c*.%ext%" "The big bang theory %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TBiBaTheory%t%0%%c [www.newpct.com].%ext%" "The big bang theory %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TBiBaTheory%t%%%c [www.newpct.com].%ext%" "The big bang theory %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "TBBT*%t%0%%c*.%ext%" "The big bang theory %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "TBBT*%t%%%c*.%ext%" "The big bang theory %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "The.Big.Bang.Theory.*%t%x0%%c*.%ext%" "The big bang theory %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "The.Big.Bang.Theory.*%t%x%%c*.%ext%" "The big bang theory %t%%%c.%ext%"

 

if %t% gtr %tf% goto :EOF
set /a t=%t%+1 & goto The big bang theory

