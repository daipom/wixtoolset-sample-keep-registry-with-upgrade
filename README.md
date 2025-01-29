# How to use

* Install WiX Toolset v3.14.1 from https://github.com/wixtoolset/wix3/releases/tag/wix3141rtm
* Set PATH: `$Env:Path += ";C:\Program Files (x86)\WiX Toolset v3.14\bin"`
* Ruby path is set as `C:\Ruby32-x64\bin\ruby.exe` in the following file. Change it if necessary.
  * `source.wxs`
  * `files/register.rb`
* Build: `rake`
  * Or run the following commands manually:
    * `candle.exe source.wxs`
    * `light.exe source.wixobj -ext WixUIExtension -ext WixUtilExtension  -out sample_installer.ms`
* Build and install: `rake install`
  * You can check the logs in `installer.log`
