name             'looker'
maintainer       'Deliv'
maintainer_email 'eng@deliv.co'
license          'all_rights'
description      'Installs/Configures Looker'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'
supports         ['ubuntu']

source_url 'https://github.com/deliv/looker-cookbook'
issues_url 'https://github.com/deliv/looker-cookbook/issues'
chef_version '>= 12.1'

depends 'java'
depends 'aws'