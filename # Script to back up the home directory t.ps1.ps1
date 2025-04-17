# Script to back up the home directory to a compressed file
# Name: Joshua Merren
# Date: 9 August 2024
# Course title: CYB-300

# Define the source and target paths
$sourcePath = "C:\Users"  
$backupDirectory = "C:\backup"
$backupFile = "home_backup.zip"
$backupPath = Join-Path -Path $backupDirectory -ChildPath $backupFile

# Check if the backup directory exists, if not, create it
if (-not (Test-Path -Path $backupDirectory)) {
    New-Item -Path $backupDirectory -ItemType Directory
    Write-Host "Backup directory created at $backupDirectory"
}

# Create a compressed archive of the source directory
Compress-Archive -Path $sourcePath -DestinationPath $backupPath -Force
Write-Host "The directory $sourcePath has been successfully backed up to $backupPath"