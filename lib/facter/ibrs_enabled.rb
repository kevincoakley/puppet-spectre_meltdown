Facter.add('ibrs_enabled') do
  setcode do
    Facter::Core::Execution.execute('cat /sys/kernel/debug/x86/ibrs_enabled')
  end
end
