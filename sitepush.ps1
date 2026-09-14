$root = "C:\Users\omark\AndroidStudioProjects\contractor-crm-site"
Set-Location $root
if (Test-Path "$root\.git\index.lock") { Remove-Item "$root\.git\index.lock" -Force }
& git add index.html privacy.html
& git -c user.name="Omar Khalid" -c user.email="o.khalid64@gmail.com" commit -m "Rename the site to Simple CRM"
& git push origin main 2>&1 | Out-Null
Write-Output "--- log ---"
& git log --oneline -2
Write-Output "--- status ---"
& git status --short
