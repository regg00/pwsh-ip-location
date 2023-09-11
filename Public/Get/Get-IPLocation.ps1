Function Get-IPLocation {
    <#
    .SYNOPSIS
        Retrieves the GeoIP information for an IP address
    .DESCRIPTION
        Retrieves the GeoIP information for an IP address
    .PARAMETER IP
        The IP address to lookup
    .EXAMPLE
        Get-IPLocation 45.61.8.94

        ip             : 45.61.8.94
        success        : True
        type           : IPv4
        continent      : North America
        continent_code : NA
        country        : Canada
        country_code   : CA
        region         : Québec
        region_code    : QC
        city           : Montreal
        latitude       : 45.5016889
        longitude      : -73.567256
        is_eu          : False
        postal         : H3A 2A6
        calling_code   : 1
        capital        : Ottawa
        borders        : US
        flag           : @{img=https://cdn.ipwhois.io/flags/ca.svg; emoji=🇨🇦; emoji_unicode=U+1F1E8 U+1F1E6}
        connection     : @{asn=22652; org=Fibrenoire Inc.; isp=Fibrenoire Inc.; domain=fibrenoire.ca}
        timezone       : @{id=America/Toronto; abbr=EDT; is_dst=True; offset=-14400; utc=-04:00; current_time=2023-09-11 3:59:30 PM}

    .OUTPUTS
        PSCustomObject
    #>
    [CmdletBinding()]
    [OutputType([PSCustomObject])]
    param(
        [Parameter(Mandatory = $true, Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String] $IP
    )
    begin {

    }
    process {
        Return Invoke-RestMethod -Uri "http://ipwho.is/$IP" -Method GET -ContentType "application/json" -ErrorAction Stop

    }
    end {

    }





}
