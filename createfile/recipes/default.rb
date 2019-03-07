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


template "/home/ubuntu/data2.json" do
  source "data2.json.erb"
  mode 0644
  variables(
      :a_boolean => true,
      :a_dob => "03_05_1983",
      :a_string => "string"
  )
  only_if {node['createfile']['install_file']}
end 
