Facter.add('retp_enabled') do
  setcode do
    Facter::Core::Execution.execute('cat /sys/kernel/debug/x86/retp_enabled')
  end
end
