require 'spec_helper'
describe 'spectre_meltdown' do
  context 'with default values for all parameters' do
    it { should contain_class('spectre_meltdown') }
  end
end
