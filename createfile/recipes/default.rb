#
# Cookbook:: createfile
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

directory "/srv/www/shared" do
 mode 0755
 owner 'root'
 group 'root'
 recursive true
 action :create
end

cookbook_file "/srv/www/shared/data.json" do
 source "data.json"
 mode 0644
 action :create_if_missing
end
