require 'serverspec'

include Serverspec::Helper::Exec

describe service('httpd') do
    it { should be_running }
end

describe port(80) do
    it { should be_listening.with('tcp') }
end

describe command('curl http://localhost/') do
  it { should return_stdout /MyApp Main/ }
end
