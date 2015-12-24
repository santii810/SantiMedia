set t=%~1
set tf=%~2
set ext=%~3
:inicio
For /l %%c in (1,1,9) do ren "emdti%t%0%%c*.%ext%" "El ministerio del tiempo %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "emdti%t%%%c*.%ext%" "El ministerio del tiempo %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "lmdti%t%0%%c*.%ext%" "El ministerio del tiempo %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "lmdti%t%%%c*.%ext%" "El ministerio del tiempo %t%%%c.%ext%"
For /l %%c in (1,1,9) do ren "emdtim%t%0%%c*.%ext%" "El ministerio del tiempo %t%0%%c.%ext%"
For /l %%c in (10,1,25) do ren "emdtim%t%%%c*.%ext%" "El ministerio del tiempo %t%%%c.%ext%"


if not %t% gtr %tf% set /a t=%t%+1 & goto inicio