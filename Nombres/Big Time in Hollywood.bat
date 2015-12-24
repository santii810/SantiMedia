set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "Big.Time.In.Hollywood.Fl*%t%x0%%c*.%ext%" "Big Time in Hollywood %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "Big.Time.In.Hollywood.Fl*%t%x%%c*.%ext%" "Big Time in Hollywood %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "BTiHo*%t%0%%c*.%ext%" "Big Time in Hollywood %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "BTiHo*%t%%%c*.%ext%" "Big Time in Hollywood %t%%%c.%ext%"

if not %t% gtr %tf% set /a t=%t%+1 & goto inicio