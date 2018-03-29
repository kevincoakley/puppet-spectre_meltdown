# spectre_meltdown

[![Build Status](https://travis-ci.org/kevincoakley/puppet-spectre_meltdown.svg?branch=master)](https://travis-ci.org/kevincoakley/puppet-spectre_meltdown)

## Description

Disable Spectre And Meltdown kernel patches (CVE-2017-5754 and CVE-2017-5715) by 
adding "nopti" and "spectre_v2=off" to kernel command line for grub. 

Adds facts ibpb_enabled, ibrs_enabled, pti_enabled to record the value of 
/sys/kernel/debug/x86/ibpb_enabled, /sys/kernel/debug/x86/ibrs_enabled and 
/sys/kernel/debug/x86/pti_enabled. 

If the values of ibpb_enabled and ibrs_enabled are 0 then the patches for CVE-2017-5715 are 
disabled. 

If the value of pti_enabled is 0 then the patch for CVE-2017-5754 is disabled.

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