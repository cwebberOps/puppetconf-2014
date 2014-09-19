require 'spec_helper'
describe 'myapp' do

  context 'with defaults for all parameters' do
    it { should contain_class('myapp') }
  end
end
