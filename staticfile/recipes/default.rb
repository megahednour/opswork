#
# Cookbook:: staticfile
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
directory "/srv/www/nour" do 
    mode 0755
    owner 'ubuntu'
    group 'ubuntu'
    recursive true
    actio :create 
end 

cookbook_file "/srv/www/nour/test.json" do
    source "test.json"
    mode 0644
    action :create_if_missing
end

