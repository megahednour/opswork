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


template "/srv/www/shared/data.json" do
  source "data.json.erb"
  mode 0644
  variables(
    :a_boolean_var => true,
    :a_string_var => "some string"
  )
  only_if {node['createfile']['install_file']}
end
