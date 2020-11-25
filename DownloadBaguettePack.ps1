$installerFilePath = [Environment]::GetFolderPath('ApplicationData') + "/.minecraft/resourcepacks/BaguetteSoundPack.zip"

# Check if already exists
if (Test-Path $installerFilePath) {
    Write-Host "Skipped downloading BaguettePack, file already exists."
    exit
}

Write-Host "Downloading Pack..."

# Download the zip archive
$PackDownloadUrl = "https://github.com/derech1e/baguettelauncher/raw/master/BaguetteSoundPack.zip"
# Download .NET runtime to temp directory
Write-Host "Downloading BaguettePack from $installerDownloadUrl"
Write-Host "Please wait, this can take some time..."

Import-Module BitsTransfer
Start-BitsTransfer $PackDownloadUrl $installerFilePath -DisplayName "Downloading BaguettePack..." -Description "BaguettePack will be installed as soon as it's downloaded"

Write-Host "Done downloading BaguettePack."