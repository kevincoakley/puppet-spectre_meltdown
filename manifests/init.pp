# Class: spectre_meltdown
# ===========================
#
# Disable Spectre And Meltdown kernel patches (CVE-2017-5754 and CVE-2017-5715) by
#   adding "nopti" and "spectre_v2=off" to kernel command line for grub.
#
# Parameters
# ----------
#
# @param ensure
#   set to present to disable Spectre And Meltdown kernel patches
#
class spectre_meltdown (
  $ensure = absent,
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
}
