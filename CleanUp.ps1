param([Parameter(Mandatory)][String[]] $techniques)

Import-Module ".\Invoke-AtomicRedTeam.psd1" -Force
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="..\atomics"}

if ($techniques.ToUpper() -eq "ALL") {
    Invoke-AtomicTest -AtomicTechnique "All" -Cleanup
}
else{
    $AtomicTests = $techniques
    $AtomicTests.GetEnumerator() | Foreach-Object { Invoke-AtomicTest $_ -Cleanup }
}

