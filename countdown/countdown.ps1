#COUNTDOWN DISPLAY

$Host.UI.RawUI.ForegroundColor = "White"
$Host.UI.RawUI.BackgroundColor = "Black"

$seconds = Read-Host "`nEnter countdown time in seconds "

if([int]::TryParse($seconds, [ref]$null)) {

	$seconds = [int]$seconds
	
	for ($i = $seconds; $i -ge 0; $i--) {
		Write-Host "$i seconds remaining..." -ForegroundColor "Red"
		Start-Sleep -Seconds 1
	}

	Write-Host "`nAnd nothing happened.....just like your life goals ;)`n" -ForegroundColor "DarkYellow"

} else {
	Write-Host "The countdown time entered is invalid`n" -ForegroundColor "DarkRed"
}

