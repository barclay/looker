name             'looker'
maintainer       'Deliv'
maintainer_email 'eng@deliv.co'
license          'MIT'
description      'Installs/Configures Looker'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.1'
supports         ['ubuntu', 'centos']

recipe 'looker::default', 'Installs the looker application (calls to `setup`)'
recipe 'looker::setup',   'Installs the looker application'
recipe 'looker::user',    'Installs the looker user, group and home directory'
recipe 'looker::ssl',     'Sets up a custom SSL certificate for the looker application'
recipe 'looker::stop',    'Stops the looker service'
recipe 'looker::start',   'Starts the looker service'

source_url 'https://github.com/deliv/looker-cookbook'
issues_url 'https://github.com/deliv/looker-cookbook/issues'

depends 'java'
depends 'aws'

chef_version '>= 12.1'
