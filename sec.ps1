secedit /export /cfg C:\securityPolicy.cfg
(Get-Content C:\securityPolicy.cfg).replace("PasswordComplexity = 0","PasswordComplexity = 1") | Out-File C:\securityPolicy.cfg
secedit /configure /db C:\windows\security\local.sdb /cfg C:\securityPolicy.cfg /areas SECURITYPOLICY
rm -force C:\securityPolicy.cfg -confirm:$false
