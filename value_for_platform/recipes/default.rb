#
# Cookbook:: value_for_platform
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

data_dir = value_for_platform(
 "centos" => { "default" => "/home/www/shared" },
 "ubuntu" => { "default" => "/home/www/data" ),
 "default" => "/srv/www/config"
)
directory data_dir do 
 mode 0755
 owner 'root'
 group 'root'
 recursive true
 action :create
end

