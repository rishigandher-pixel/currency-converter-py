<#
.SYNOPSIS
    Automates project file extension cleanup within the repository.
.DESCRIPTION
    Iterates through the local repository directory to locate and strip accidental 
    '.txt' extensions appended by standard Windows text editors.
#>

$TargetFiles = @(
    @{ Path = "Readme.md.txt"; NewName = "README.md" },
    @{ Path = "gitignore.txt"; NewName = ".gitignore" }
)

Write-Host "Starting project environment cleanup..." -ForegroundColor Cyan

foreach ($File in $TargetFiles) {
    if (Test-Path $File.Path) {
        try {
            Rename-Item -Path $File.Path -NewName $File.NewName -ErrorAction Stop
            Write-Host "Successfully corrected: $($File.Path) -> $($File.NewName)" -ForegroundColor Green
        }
        catch {
            Write-Warning "Failed to rename $($File.Path): $_"
        }
    } else {
        Write-Host "File not found or already corrected: $($File.Path)" -ForegroundColor Yellow
    }
}

Write-Host "Environment cleanup operation complete." -ForegroundColor Cyan