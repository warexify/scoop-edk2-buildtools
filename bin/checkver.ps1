if (!$env:SCOOP_HOME) {
    $env:SCOOP_HOME = Resolve-Path (Split-Path (Split-Path (scoop which scoop)))
}
$checkver = "$env:SCOOP_HOME/bin/checkver.ps1"
$dir = "$psscriptroot/.." # checks the parent dir
Invoke-Expression -Command "$checkver -Dir $dir $($args | ForEach-Object { "$_ " })"
