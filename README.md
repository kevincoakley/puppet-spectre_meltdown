# spectre_meltdown

[![Build Status](https://travis-ci.org/kevincoakley/puppet-spectre_meltdown.svg?branch=master)](https://travis-ci.org/kevincoakley/puppet-spectre_meltdown)

## Description

Disable Spectre And Meltdown kernel patches (CVE-2017-5754, CVE-2017-5715, CVE-2018-3639) by adding "nopti", "spectre_v2=off" and "spec_store_bypass_disable=off" to kernel command line for grub.

Adds facts:

* meltdown 
* spectre_v1
* spectre_v2
* ibpb_enabled 
* ibrs_enabled
* pti_enabled 
* cpu_microcode
* l1tf
* retp_enabled
* spec_store_bypass
* ssbd_enabled

## Usage

**ensure enables/disables CVE-2017-5754 and CVE-2017-5715**

**spectre_v4 enables/disables CVE-2018-3639**

To disable Spectre And Meltdown kernel patches:

    class { 'spectre_meltdown':
      ensure     => present,
      spectre_v4 => present,
    }
    
To re-enable Spectre And Meltdown kernel patches: **
            
    class { 'spectre_meltdown':
      ensure     => absent,
      spectre_v4 => absent,
    }
    
\** Note: Re-enabling the kernel patches may not be all that is required to project your system
from Spectre And Meltdown. Additional kernel updates and vendor firmware may be necessary. 
