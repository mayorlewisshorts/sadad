set pass=
for /f %%p in (.\users.txt) do (
	net user /domain %%p %pass%%%p
	

)