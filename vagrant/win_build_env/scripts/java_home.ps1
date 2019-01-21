$javaPath = gci ("${env:ProgramFiles}\Java", "${env:ProgramFiles(x86)}\Java")[!(Test-Path "${env:ProgramFiles}\Java")] java.exe -Recurse | select -f 1 | Split-Path | Convert-Path
$javaHome = $javaPath | Split-Path

[Environment]::SetEnvironmentVariable("JAVA_HOME", $javaHome, "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" +  $javaPath, "Machine")