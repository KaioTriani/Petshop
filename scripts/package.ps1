$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path $PSScriptRoot -Parent
$publicRoot = Join-Path $projectRoot 'public_html'
$outputDirectory = Join-Path $projectRoot 'downloads'
New-Item -ItemType Directory -Force $outputDirectory | Out-Null
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.IO.Compression
$outputArchive = Join-Path $outputDirectory 'serv-granja-hostinger.zip'
if (Test-Path -LiteralPath $outputArchive) { Remove-Item -LiteralPath $outputArchive }
$archive = [IO.Compression.ZipFile]::Open($outputArchive, [IO.Compression.ZipArchiveMode]::Create)
try {
  Get-ChildItem -LiteralPath $publicRoot -Recurse -File -Force | ForEach-Object {
    $entryName = $_.FullName.Substring($publicRoot.Length + 1).Replace('\', '/')
    [IO.Compression.ZipFileExtensions]::CreateEntryFromFile($archive, $_.FullName, $entryName, [IO.Compression.CompressionLevel]::Optimal) | Out-Null
  }
} finally { $archive.Dispose() }
Write-Output "Pacote pronto: $outputArchive"

