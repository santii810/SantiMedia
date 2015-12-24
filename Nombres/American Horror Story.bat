set t=%~1
set tf=%~2
set ext=%~3
:AHS
For /l %%c in (1,1,9) do ren "AmericanHStory%t%0%%c*.%ext%" "American Horror Story %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AmericanHStory%t%%%c*.%ext%" "American Horror Story %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AmericanHorrorStory%t%0%%c [www.newpct.com].%ext%" "American Horror Story %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AmericanHorrorStory%t%%%c [www.newpct.com].%ext%" "American Horror Story %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AmericanStory%t%0%%c [www.newpct.com].%ext%" "American Horror Story %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AmericanStory%t%%%c [www.newpct.com].%ext%" "American Horror Story %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AmeriHorStory%t%0%%c [www.newpct.com].%ext%" "American Horror Story %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AmeriHorStory%t%%%c [www.newpct.com].%ext%" "American Horror Story %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AmeriHStory%t%0%%c [www.newpct.com].%ext%" "American Horror Story %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AmeriHStory%t%%%c [www.newpct.com].%ext%" "American Horror Story %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "AHS*%t%0%%c*.%ext%" "American Horror Story %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "AHS*%t%%%c*.%ext%" "American Horror Story %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto AHS
