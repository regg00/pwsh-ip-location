<#
    .SYNOPSIS
        Core test suite.
#>

BeforeAll {
    $ModulePath = Split-Path -Parent -Path (Split-Path -Parent -Path $PSCommandPath)
    $ModuleName = 'GeoIPPowerShell'
    $ManifestPath = "$($ModulePath)\$($ModuleName).psd1"
    if (Get-Module -Name $ModuleName) {
        Remove-Module $ModuleName -Force
    }
    Import-Module $ManifestPath -Verbose:$False
    $Script:ModuleInformation = Import-Module -Name $ManifestPath -PassThru

}

# Test that the manifest is generally correct.
Describe 'Core' {
    It 'Manifest is valid' {
        {
            Test-ModuleManifest -Path $ManifestPath -ErrorAction Stop -WarningAction SilentlyContinue
        } | Should -Not -Throw
    }

    It 'Root module is correct' {
        $Script:ModuleInformation.RootModule | Should -Be ".\$($ModuleName).psm1"
    }

    It 'Has a description' {
        $Script:ModuleInformation.Description | Should -Not -BeNullOrEmpty
    }

    It 'GUID is correct' {
        $Script:ModuleInformation.GUID | Should -Be '21a3154e-8f1f-46a8-a220-7cd7251d31c5'
    }

    It 'Version is valid' {
        $Script:ModuleInformation.Version -As [Version] | Should -Not -BeNullOrEmpty
    }

    It 'Copyright is present' {
        $Script:ModuleInformation.Copyright | Should -Not -BeNullOrEmpty
    }

    It 'Project URI is correct' {
        $Script:ModuleInformation.ProjectUri | Should -Be 'https://github.com/regg00/pwsh-ip-location'
    }

    It 'PowerShell Gallery tags is not empty' {
        $Script:ModuleInformation.Tags.count | Should -Not -BeNullOrEmpty
    }

    It 'PowerShell Gallery tags do not contain spaces' {
        foreach ($Tag in $Script:ModuleInformation.Tags) {
            $Tag -NotMatch '\s' | Should -Be $True
        }
    }
}

Describe 'Module loads' {
    It 'Passed Module load' {
        Get-Module -Name $ModuleName | Should -Not -Be $null
    }
}


