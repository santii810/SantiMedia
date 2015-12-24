set t=%~1
set tf=%~2
set ext=%~3
:Falling Skies
For /l %%c in (1,1,9) do ren "FSkies%t%0%%c*.%ext%" "Falling Skies %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "FSkies%t%%%c*.%ext%" "Falling Skies %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "FSki%t%0%%c*.%ext%" "Falling Skies %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "FSki%t%%%c*.mkv" "Falling Skies %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "Fa*Sk*%t%0%%c*.mkv" "Falling Skies %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Fa*Sk*%t%%%c*.mkv" "Falling Skies %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "FS*%t%0%%c*.mkv" "Falling Skies %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "FS*%t%%%c*.mkv" "Falling Skies %t%%%c.%ext%"
rem For /l %%c in (1,1,9) do ren "aa" "Falling Skies %t%0%%c.%ext%"
rem For /l %%c in (10,1,25) do ren "aa" "Falling Skies %t%%%c.%ext%"
 
FaSki408720p [www.newpct1.com].mkv 
FaSkies406720p [www.newpct1.com].mkv 
 

FSkies401720p [www.newpct1.com].mkv
if not %t% gtr %tf% set /a t=%t%+1 & goto Falling Skies