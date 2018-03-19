
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/manisandro/gImageReader/releases/download/v3.2.99/gImageReader_3.2.99_qt5_i686.exe'
$url64      = 'https://github.com/manisandro/gImageReader/releases/download/v3.2.99/gImageReader_3.2.99_qt5_x86_64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'gImageReader*'

  checksum      = '905E6C3F6803C46858A503AD1BB763E41C7ACE2E038ABC095067656AF0725D58'
  checksumType  = 'sha256'
  checksum64    = '302F59859F9E8CEF5251094219C31658DD6F4A3E9EA39E396F87B1331084AB18'
  checksumType64= 'sha256'
  
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs










    








