# # encoding: utf-8
#
# Inspec test for recipe looker::setup
#

describe user('looker') do
  it { should exist }
end

describe directory('/home/looker/looker') do
  it { should exist }
  it { should be_directory }
  its('owner') { should eq 'looker' }
  its('group') { should eq 'looker' }
end

describe file('/home/looker/looker_v5-2.jar') do
  it { should exist }
  its('owner') { should eq 'looker' }
end

describe file('/home/looker/looker/looker.jar') do
  it { should exist }
  it { should be_executable }
  its('owner') { should eq 'looker' }
end

describe command('runuser -l looker -c "java -jar /home/looker/looker/looker.jar version"') do
  its('stdout') { should match(/5.2/) }
  its('stderr') { should eq '' }
end

describe file('/home/looker/looker/looker') do
  it { should exist }
  it { should be_executable }
  its('owner') { should eq 'looker' }
end

describe file('/etc/systemd/system/looker.service') do
  it { should exist }
  its('owner') { should eq 'root' }
  its('content') { should match %r{/WorkingDirectory=/home/looker/looker/} }
end

describe service('looker') do
  it { should be_running }
end

describe command('curl https://localhost:9999/alive -vk --stderr -') do
  its('stdout') { should match %r{HTTP/1.1 200 OK} }
end

describe port(9999) do
  it { should be_listening }
end
