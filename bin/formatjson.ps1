if (!$env:SCOOP_HOME) {
    $env:SCOOP_HOME = Resolve-Path (Split-Path (Split-Path (scoop which scoop)))
}
$formatjson = "$env:SCOOP_HOME/bin/formatjson.ps1"
$path = "$psscriptroot/.." # checks the parent dir
Invoke-Expression -Command "$formatjson -Path $path $($args | ForEach-Object { "$_ " })"
