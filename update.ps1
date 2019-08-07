Import-Module au

function global:au_SearchReplace {
	@{
		'au_bug.nuspec' = @{
			"<version>[^<]*</version>" = "<version>$($Latest.version)</version>";
			"<releaseNotes>[^<]*</releaseNotes>" = "<releaseNotes>$($Latest.releaseNotesUrl)</releaseNotes>"
		}
	}
}


function global:au_GetLatest {
	return @{
		version          = '1.0.0';
		releaseNotesUrl  = "https://example.com/?random-here=$(Get-Random)";
		url32            = 'https://github.com/majkinetor/au/archive/master.zip'
	}
}

Update-Package -NoReadme -ChecksumFor None