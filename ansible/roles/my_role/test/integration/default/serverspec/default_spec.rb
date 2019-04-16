require 'serverspec'

describe user('dev') do
    it { should exist }
    it { should belong_to_group 'devopsmeetup' }
end

describe service('apache2') do
  it { should be_enabled }
  it { should be_running }
end


describe file('/var/www/index.html') do
  it { should be_file }
end
