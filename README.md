# spectre_meltdown

[![Build Status](https://travis-ci.org/kevincoakley/puppet-spectre_meltdown.svg?branch=master)](https://travis-ci.org/kevincoakley/puppet-spectre_meltdown)

## Description

Disable Spectre And Meltdown kernel patches (CVE-2017-5754 and CVE-2017-5715) by 
adding "nopti" and "spectre_v2=off" to kernel command line for grub. 

Adds facts meltdown, spectre_v1, spectre_v2, ibpb_enabled, ibrs_enabled, pti_enabled 
to record the value of /sys/devices/system/cpu/vulnerabilities/meltdown, 
/sys/devices/system/cpu/vulnerabilities/spectre_v1, 
/sys/devices/system/cpu/vulnerabilities/spectre_v2, /sys/kernel/debug/x86/ibpb_enabled, 
/sys/kernel/debug/x86/ibrs_enabled and /sys/kernel/debug/x86/pti_enabled. 

## Usage

To disable Spectre And Meltdown kernel patches:

    class { 'spectre_meltdown':
      ensure => present,
    }
    
To re-enable Spectre And Meltdown kernel patches: **
            
    class { 'spectre_meltdown':
      ensure => absent,
    }
    
\** Note: Re-enabling the kernel patches may not be all that is required to project your system
from Spectre And Meltdown. Additional kernel updates and vendor firmware may be necessary. 