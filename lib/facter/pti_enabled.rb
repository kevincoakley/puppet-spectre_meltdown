Facter.add('pti_enabled') do
  setcode do
    Facter::Core::Execution.execute('cat /sys/kernel/debug/x86/pti_enabled')
  end
end
