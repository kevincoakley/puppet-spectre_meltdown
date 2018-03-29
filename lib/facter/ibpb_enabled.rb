Facter.add('ibpb_enabled') do
  setcode do
    Facter::Core::Execution.execute('cat /sys/kernel/debug/x86/ibpb_enabled')
  end
end
