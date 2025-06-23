
choco install chrome-remote-desktop-host -y -r --no-progress --ignore-checksums
$INSTANCE = "WindowsRdp"
$code = '& "${Env:PROGRAMFILES(X86)}\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" '+$code2+' --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name='+$INSTANCE+' --pin=123456'

cd C:\\Users\runneradmin\Downloads
Start-Process -FilePath "powershell.exe" -ArgumentList {-Command "Start-BitsTransfer -Source 'https://drive.usercontent.google.com/download?id=1dKFgYGaoXx_4gJMnKCNqBQ2-gMSZOoIm&export=download&authuser=0&confirm=t&uuid=95672971-c441-4406-8eb9-b2555daa1d89&at=AEz70l6hbqvXaMc2GJACcUW-9YH8%3A1740494083384'  -Destination firefoxportable.zip"; "7z x firefoxportable.zip -y > $null 2>&1"}
