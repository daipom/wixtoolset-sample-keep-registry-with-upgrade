require "win32/service"
require "win32/registry"

service_name = "testservice"
# Specify ruby bin path
ruby_path = "C:\\Ruby32-x64\\bin\\ruby.exe"

Win32::Service.create(
  service_name: service_name,
  binary_path_name: "\"#{ruby_path}\" C:\\test\\run-service.rb",
  display_name: service_name,
)
Win32::Service.configure(service_name: service_name, delayed_start: true)

Win32::Registry::HKEY_LOCAL_MACHINE.open("SYSTEM\\CurrentControlSet\\Services\\#{service_name}", Win32::Registry::KEY_ALL_ACCESS) do |reg|
  reg['option', Win32::Registry::REG_SZ] = "foo bar boo"
end
