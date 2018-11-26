Facter.add('cpu_microcode') do
  setcode do
    Facter::Core::Execution.execute('cat /proc/cpuinfo | grep microcode | head -1 | cut -d\' \' -f2')
  end
end
