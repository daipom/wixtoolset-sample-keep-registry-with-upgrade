desc "Build .msi"
task :build do
  sh("candle.exe", "source.wxs")
  sh(
    "light.exe", "source.wixobj",
    "-ext", "WixUIExtension",
    "-ext", "WixUtilExtension",
    "-out", "sample_installer.msi"
  )
end

desc "Build and install .msi"
task :install => :build do
  sh(
    "msiexec",
    "/i", "sample_installer.msi",
    "/quiet",
    "/l*",
    "installer.log"
  )
end

task default: :build
