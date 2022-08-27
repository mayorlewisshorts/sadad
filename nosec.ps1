Import-module activedirectory

Write-Host "`nDisabling password complexity, because I guess we don't come up with complex passwords"

secedit /export /cfg C:\securityPolicy.cfg
(Get-Content C:\securityPolicy.cfg).replace("PasswordComplexity = 1","PasswordComplexity = 0") | Out-File C:\securityPolicy.cfg
secedit /configure /db C:\windows\security\local.sdb /cfg C:\securityPolicy.cfg /areas SECURITYPOLICY
rm -force C:\securityPolicy.cfg -confirm:$false
