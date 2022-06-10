$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/joseluisq/static-web-server/releases/download/v2.9.0/static-web-server-v2.9.0-i686-pc-windows-msvc.zip'
$url64      = 'https://github.com/joseluisq/static-web-server/releases/download/v2.9.0/static-web-server-v2.9.0-x86_64-pc-windows-msvc.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'static-web-server*'

  checksum      = '8F3CD9C447136B7DA200099B2265E311085DEBB9F2C2FC30FF8BF732F6EC312C'
  checksumType  = 'sha256'
  checksum64    = '72E846329E54C0A794E5C2C62484266F31F0C411BF4243A1BAC58E7C9D697D3D'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyZipPackage @packageArgs
