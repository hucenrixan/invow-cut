param([Parameter(Mandatory=$true)][string]$File, [string]$Port = 'COM3', [int]$Baud = 38400)
# Sends a saved cut file (.plt from Invow Cut) to the cutter: DMPL, 8N1, hardware handshake.
$ErrorActionPreference = 'Stop'
if (-not (Test-Path $File)) { Write-Host "File not found: $File" -ForegroundColor Red; exit 1 }
$bytes = [IO.File]::ReadAllBytes($File)
$sp = New-Object System.IO.Ports.SerialPort $Port, $Baud, 'None', 8, 'One'
$sp.Handshake = 'RequestToSend'; $sp.WriteTimeout = 60000
try {
  $sp.Open()
  Write-Host "Sending $([IO.Path]::GetFileName($File)) ($($bytes.Length) bytes) to $Port at $Baud baud..."
  for ($i = 0; $i -lt $bytes.Length; $i += 256) {
    $n = [Math]::Min(256, $bytes.Length - $i)
    $sp.Write($bytes, $i, $n)
    Write-Progress -Activity 'Sending to cutter' -PercentComplete ([int](100 * ($i + $n) / $bytes.Length))
  }
  Start-Sleep -Milliseconds 500
  Write-Host 'Done. The cutter will finish cutting from its memory.' -ForegroundColor Green
} catch {
  Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
  Write-Host 'Check: cutter on and online, USB plugged in, SignMaster / the app closed (only one program can use the port).'
} finally { if ($sp.IsOpen) { $sp.Close() } }

