#
# Cookbook:: iteration
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
{ "/home/ubuntu/config" => 0644, "/home/ubuntu/config_2" => 0755 }.each do |path, mode_value| directory path do
 mode mode_value
 owner 'root'
 group 'root'
 recursive true
 action :create
 end
end

