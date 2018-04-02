Facter.add('spectre_v2') do
  setcode do
    if File.exist? '/sys/devices/system/cpu/vulnerabilities/spectre_v2'
      Facter::Core::Execution.execute('cat /sys/devices/system/cpu/vulnerabilities/spectre_v2')
    else
      'Vulnerable'
    end
  end
end
