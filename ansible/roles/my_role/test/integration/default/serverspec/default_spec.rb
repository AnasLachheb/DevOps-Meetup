require 'serverspec'

describe user('dev') do
    it { should exist }
    it { should belong_to_group 'devopsmeetup' }
end
