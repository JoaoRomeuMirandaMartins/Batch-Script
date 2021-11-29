for /r %%p in (*) do (
 if %%~xp == .VCD (
  if not exist "..\APPS\%%~np\" (
   mkdir "..\APPS\%%~np\"
   (echo title=%%~np && echo boot=SB.%%~np.ELF) > ..\APPS\%%~np\title.cfg
   mklink /H "..\APPS\%%~np\SB.%%~np.ELF" POPSTARTER.ELF
  ) 
 )
)
echo. && echo Tudo Pronto && echo.
pause
