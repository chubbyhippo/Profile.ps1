$remoteScriptUrl = "https://raw.githubusercontent.com/chubbyhippo/powershell-profile/main/Profile.ps1"
$response = Invoke-WebRequest -Uri $remoteScriptUrl
if (-not (Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
Set-Content -Path $PROFILE -Value $response.Content