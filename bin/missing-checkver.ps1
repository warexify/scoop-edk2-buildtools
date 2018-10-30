if (!$env:SCOOP_HOME) {
    $env:SCOOP_HOME = Resolve-Path (Split-Path (Split-Path (scoop which scoop)))
}
$missing_checkver = "$env:SCOOP_HOME/bin/missing-checkver.ps1"
$dir = "$psscriptroot/.." # checks the parent dir
Invoke-Expression -Command "$missing_checkver -Dir $dir $($args | ForEach-Object { "$_ " })"
