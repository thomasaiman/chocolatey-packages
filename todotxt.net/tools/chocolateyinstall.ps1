
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'todotxt-setup-3.3.0.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file          = $fileLocation

  softwareName  = 'todotxt.net*'

  checksum      = '7D2ACADE56164EF7E0396F0293EB8275554799BCFB2209C51EDD4622F9BA21B0'
  checksumType  = 'sha256'
  checksum64    = '7D2ACADE56164EF7E0396F0293EB8275554799BCFB2209C51EDD4622F9BA21B0'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyInstallPackage @packageArgs










    








