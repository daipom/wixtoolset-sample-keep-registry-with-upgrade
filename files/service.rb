require "win32/daemon"

class TestService < Win32::Daemon
  def service_main
    while running?
      sleep 10
    end
  end
end

TestService.new.mainloop
