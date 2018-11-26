require 'spec_helper'

describe 'spectre_meltdown' do
  it { is_expected.to compile }
  it { is_expected.to compile.with_all_deps }

  # Test class defaults
  it { is_expected.to contain_kernel_parameter('nopti').with(ensure: 'absent') }

  it { is_expected.to contain_kernel_parameter('spectre_v2').with(ensure: 'absent', value: 'off') }

  # Test ensure = present
  context 'with ensure => present' do
    let(:params) { { 'ensure' => 'present' } }

    it { is_expected.to contain_kernel_parameter('nopti').with(ensure: 'present') }

    it { is_expected.to contain_kernel_parameter('spectre_v2').with(ensure: 'present', value: 'off') }
  end
end
