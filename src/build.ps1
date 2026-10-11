# Builds ../space-game.html from the template, embedding the MP3 as base64.
$here = $PSScriptRoot
$template = [IO.File]::ReadAllText((Join-Path $here 'space-game.template.html'))
$mp3 = [Convert]::ToBase64String([IO.File]::ReadAllBytes((Join-Path $here 'clair-de-lune.mp3')))
$html = $template.Replace('__CLAIR_DE_LUNE_MP3__', $mp3)
$out = Join-Path (Split-Path $here) 'space-game.html'
[IO.File]::WriteAllText($out, $html, (New-Object System.Text.UTF8Encoding $false))
"Wrote $out ($([math]::Round((Get-Item $out).Length / 1MB, 1)) MB)"
