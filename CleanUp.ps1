param([Parameter(Mandatory)][String[]] $techniques)

Import-Module ".\Invoke-AtomicRedTeam.psd1" -Force
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="..\atomics"}

if ($techniques.ToUpper() -eq "ALL") {
    Invoke-AtomicTest -AtomicTechnique "All" -Cleanup
}

$AtomicTests = $techniques
Get-ChildItem $PathToAtomicsFolder -Recurse -Filter *.yaml -File | ForEach-Object {
    $currentTechnique = [System.IO.Path]::GetFileNameWithoutExtension($_.FullName)
    if ( $currentTechnique -ne "index" ) { $AtomicTests.Add($currentTechnique) | Out-Null }
}
$AtomicTests.GetEnumerator() | Foreach-Object { Invoke-AtomicTest $_ -Cleanup }
