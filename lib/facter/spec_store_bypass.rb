Facter.add('spec_store_bypass') do
  setcode do
    if File.exist? '/sys/devices/system/cpu/vulnerabilities/spec_store_bypass'
      Facter::Core::Execution.execute('cat /sys/devices/system/cpu/vulnerabilities/spec_store_bypass')
    else
      'Vulnerable'
    end
  end
end
