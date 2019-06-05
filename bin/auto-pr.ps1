param(
    # overwrite upstream param
    [String]$upstream = "warexify/scoop-edk2-buildtools:master"
)

if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (Split-Path (Split-Path (scoop which scoop))) }
$autopr = "$env:SCOOP_HOME/bin/auto-pr.ps1"
$dir = "$psscriptroot/../bucket" # checks the parent dir
Invoke-Expression -Command "$autopr -dir $dir -upstream $upstream $($args | ForEach-Object { "$_ " })"
