$locations = @(
    'C:\Windows\Temp\*',
    'C:\Windows\Prefetch\*',
    'C:\Users\*\Appdata\Local\Temp\*'
)

$success = "`nYum-Yum! Very Tasty`n`n"

# Code Blocs
Remove-Item $locations -Force -Recurse

# Alert Messages
Write-Host "$success"