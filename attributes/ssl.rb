
# if you'd like to have looker use a custom SSL certificate you'll
# want to populate these values 
#
default[:looker][:ssl][:aws_access_key_id]       = nil
default[:looker][:ssl][:aws_secret_access_key]   = nil
default[:looker][:ssl][:s3_bucket]               = nil
default[:looker][:ssl][:certificate_key_path]    = nil
default[:looker][:ssl][:certificate_path]        = nil

default[:looker][:ssl][:keystore_password]       = 10.times.map{rand(10)}.join

if node[:looker][:use_custom_ssl]
  default[:looker][:jar_start_args] = " --ssl-keystore=/home/looker/looker/.ssl/looker.jks " + 
                                      " --ssl-keystore-pass-file=/home/looker/looker/.ssl/.keystorepass"
end