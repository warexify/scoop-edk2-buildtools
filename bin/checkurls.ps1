if (!$env:SCOOP_HOME) {
    $env:SCOOP_HOME = Resolve-Path (Split-Path (Split-Path (scoop which scoop)))
}
$checkurls = "$env:SCOOP_HOME/bin/checkurls.ps1"
$dir = "$psscriptroot/.." # checks the parent dir
Invoke-Expression -Command "$checkurls -Dir $dir $($args | ForEach-Object { "$_ " })"
