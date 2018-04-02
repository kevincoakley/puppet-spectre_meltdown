Facter.add('spectre_v1') do
  setcode do
    if File.exist? '/sys/devices/system/cpu/vulnerabilities/spectre_v1'
      Facter::Core::Execution.execute('cat /sys/devices/system/cpu/vulnerabilities/spectre_v1')
    else
      'Vulnerable'
    end
  end
end
