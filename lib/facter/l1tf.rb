Facter.add('l1tf') do
  setcode do
    if File.exist? '/sys/devices/system/cpu/vulnerabilities/l1tf'
      Facter::Core::Execution.execute('cat /sys/devices/system/cpu/vulnerabilities/l1tf')
    else
      'Vulnerable'
    end
  end
end
