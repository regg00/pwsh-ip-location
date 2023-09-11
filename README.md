TODO: Cjang
![Tests](https://github.com/regg00/ChocoMan/actions/workflows/test-and-deploy.yaml/badge.svg)
![Docs](https://github.com/regg00/ChocoMan/actions/workflows/build-doc.yaml/badge.svg)
[![GitHub issues](https://img.shields.io/github/issues/regg00/ChocoMan.svg)](https://github.com/regg00/ChocoMan/issues)

TODO: Replace icons
<img src="./Docs/icon.png" height="200">

# GeoIP PowerShell

A PowerShell module to query GeoIP databases.

## Why it exists

I needed an easy way to query GeoIP databases using PowerShell. I got tired or using `Invoke-RestMethod` on different APIs, so I built this.

## Installing this module

TODO: Replace module URL
This module is available in [PowerShell Gallery](https://www.powershellgallery.com/packages/ChocoMan):

```powershell
Install-Module ChocoMan
```

Or, download it from here and save all of the files somewhere in your `$PSModulePath`.

## Using the module

First things first, you need to import it `Import-Module ChocoMan`

### Demo

TODO: Replace GIF demo
<img src="./Docs/demo.gif" height="500">

### Functions

Here's the status of each functions:

| Command                                    | Status             | Notes                                                 |
| ------------------------------------------ | ------------------ | ----------------------------------------------------- |
| [Get-IPLocation](./Docs/Get-IPLocation.md) | :white_check_mark: | Get the location information of a specific IP address |

## What else can I do?

There is plenty of help to read. Get started [here](./Docs/)
