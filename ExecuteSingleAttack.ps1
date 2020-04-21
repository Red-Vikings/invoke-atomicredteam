param([Parameter(Mandatory)][String] $technique)


Invoke-AtomicTest -AtomicTechnique $technique -TestNumbers $test -GetPrereqs
Invoke-AtomicTest -AtomicTechnique $technique -TestNumbers $test -ExecutionLogPath csvOutput.csv