$locations = @(
    'C:\Windows\Temp\*',
    'C:\Windows\Prefetch\*',
    'C:\Users\*\Appdata\Local\Temp\*'
)

Remove-Item $locations -Force -Recurse -WhatIf