#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
execute "install_updates" do 
    command "apt-get update"
end

package "tomcat7" do
    action :install
end

include_recipe 'tomcat::service'

service 'tomcat' do 
    action :enable
end

directory "/srv/www/shared" do
    mode 0755
    owner 'root'
    group 'root'
    recursive true
    action :create
end

template "/srv/www/shared/data.json" do 
    source "data.json.erb"
    mode 0644
    variables(
        :a_boolean => true,
        :a_string => "somestring"
    )
only_if {node['createfile']['install_file']}
notifies :restart, resources(:service => 'tomcat')