# Class: spectre_meltdown
# ===========================
#
# Disable Spectre And Meltdown kernel patches (CVE-2017-5754, CVE-2017-5715,
#   CVE-2018-3639) by adding "nopti", "spectre_v2=off" and
#   "spec_store_bypass_disable=off" to kernel command line for grub.
#
# Parameters
# ----------
#
# @param ensure
#   set to present to disable Spectre And Meltdown kernel patches
#
# @param spectre_v4
#   set to true to disable Spectre V4 kernel patches. ensure = present also needs
#   to be set for it to be applied. Added so version 1 of the puppet module can be
#   upgraded without unintended kernel option changes.
#
class spectre_meltdown (
  $ensure = absent,
  $spectre_v4 = absent,
) {
  case $ensure {
    present, absent: {
      kernel_parameter { 'nopti':
        ensure => $ensure,
      }

      kernel_parameter { 'spectre_v2':
        ensure => $ensure,
        value  => off,
      }
    }
    default: { }
  }

  case $spectre_v4 {
    present, absent: {
      kernel_parameter { 'spec_store_bypass_disable':
        ensure => $spectre_v4,
        value  => off,
      }
    }
    default: { }
  }
}
