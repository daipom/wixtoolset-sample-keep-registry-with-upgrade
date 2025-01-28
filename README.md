# How to use

* Install WiX Toolset v3.14.1 from https://github.com/wixtoolset/wix3/releases/tag/wix3141rtm
* Set PATH: `$Env:Path += ";C:\Program Files (x86)\WiX Toolset v3.14\bin"`
* Build: `rake`
  * Or run the following commands manually:
    * `candle.exe source.wxs`
    * `light.exe source.wixobj -ext WixUIExtension -ext WixUtilExtension  -out sample_installer.ms`
* Debug
  * `msiexec /i sample_installer.msi /quiet /l* installer.log`
