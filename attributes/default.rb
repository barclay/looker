
# looker general attributes 
default[:looker][:looker_user]        = 'looker'
default[:looker][:looker_group]       = 'looker'
default[:looker][:home_dir]           = '/home/looker/'
default[:looker][:looker_dir]         = File.join(node[:looker][:home_dir], 'looker')
default[:looker][:looker_jar_file]    = File.join(node[:looker][:looker_dir], 'looker.jar')
default[:looker][:looker_script_name] = File.join(node[:looker][:looker_dir], 'looker')
default[:looker][:forward_to_443]     = true
default[:looker][:use_custom_ssl]     = false
default[:looker][:looker_user_ulimit] = 4096

#looker version
default[:looker][:major_version]      = 5
default[:looker][:minor_version]      = 2

case "#{node[:looker][:major_version]}#{node[:looker][:minor_version]}"
when '52'
  default[:looker][:download_url] = 'https://s3.amazonaws.com/download.looker.com/aeHee2HiNeekoh3uIu6hec3W/looker-latest.jar'
when '46'
  default[:looker][:download_url] = 'https://s3.amazonaws.com/download.looker.com/aeHee2HiNeekoh3uIu6hec3W/looker-latest.jar'
  # TODO: add more urls...
end

# Java 8
default[:java]['jdk_version'] = '8'
default[:java]['install_flavor'] = 'oracle'
default[:java]['oracle']['accept_oracle_download_terms'] = true
  