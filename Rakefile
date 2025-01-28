desc "Build .msi"
task :build do
  sh("candle.exe", "source.wxs")
  sh("light.exe", "source.wixobj",
    "-ext", "WixUIExtension",
    "-ext", "WixUtilExtension",
    "-out", "sample_installer.msi"
  )
end

task default: :build
