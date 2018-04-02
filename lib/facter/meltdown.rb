Facter.add('meltdown') do
  setcode do
    if File.exist? '/sys/devices/system/cpu/vulnerabilities/meltdown'
      Facter::Core::Execution.execute('cat /sys/devices/system/cpu/vulnerabilities/meltdown')
    else
      'Vulnerable'
    end
  end
end
