set /p pass=Entertemp
for /f %%p in (.\users.txt) do (
	net user /domain %%p %pass%%%p
	

)