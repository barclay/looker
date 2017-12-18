# encoding: utf-8
#
# Author:: Barclay Loftus (<barclay@deliv.co>)
# Cookbook:: looker
# test:: user
#

describe group('looker') do
  it { should exist }
end

describe user('looker') do
  it { should exist }
  its('group') { should eq 'looker' }
end

describe file('/etc/security/limits.conf') do
  its('content') { should match(/looker hard nofile 9999/) }
end
