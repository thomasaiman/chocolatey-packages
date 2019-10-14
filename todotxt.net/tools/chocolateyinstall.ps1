
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'todotxt-setup-3.3.1.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file          = $fileLocation

  softwareName  = 'todotxt.net*'

  checksum      = '3470A0BF55FA69277B877E9EDD0F835593E7FD33A77B4DF41808D24AA06BA05D'
  checksumType  = 'sha256'
  checksum64    = '3470A0BF55FA69277B877E9EDD0F835593E7FD33A77B4DF41808D24AA06BA05D'
  checksumType64= 'sha256'
  #The installer is made with InnoSetup
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyInstallPackage @packageArgs










    








