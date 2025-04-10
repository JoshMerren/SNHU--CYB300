# Script to retrieve and save a list of all running processes
# Name: Joshua Merren
# Date: 9 August 2024
# Course title: CYB-300

# Define the path to the output file on the Desktop
$desktopPath = [Environment]::GetFolderPath("Desktop")
$outputFile = "running_processes.txt"
$outputPath = Join-Path -Path $desktopPath -ChildPath $outputFile

# Retrieve all currently running processes
$processes = Get-Process

# Output the processes to the specified text file
$processes | Out-File -FilePath $outputPath

# Confirm completion in the console
Write-Host "A list of all running processes has been saved to $outputPath"
