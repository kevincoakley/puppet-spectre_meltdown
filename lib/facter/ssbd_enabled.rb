Facter.add('ssbd_enabled') do
  setcode do
    Facter::Core::Execution.execute('cat /sys/kernel/debug/x86/ssbd_enabled')
  end
end
