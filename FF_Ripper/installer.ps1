Start-Process -FilePath "powershell.exe" -ArgumentList {-Command "Start-BitsTransfer -Source 'https://drive.usercontent.google.com/download?id=1FAJj_fjcz8-_HCo_QHMxJBFnTOMszgM5&export=download&confirm=t&uuid=d50cd0ee-8323-4b0b-87a1-05abeb30494e'  -Destination 'c:\\ffripper.7z'"; "cd c:\\"; "7z x 'c:\\ffripper.7z' -y > $null 2>&1"}
$jsonFilePath = "C:\a\_temp\_github_workflow\event.json"
$jsonContent = Get-Content -Path $jsonFilePath -Raw
$jsonObject = $jsonContent | ConvertFrom-Json
$code = $jsonObject.inputs.authcode
if ($code -match '--code="([^"]+)"') {$code2 = '--code='+$matches[1]}
choco install chrome-remote-desktop-host -y -r --no-progress --ignore-checksums
$INSTANCE = "WindowsRdp"
$code = '& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" '+$code2+' --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name='+$INSTANCE+' --pin=123456'
Invoke-Expression $code
