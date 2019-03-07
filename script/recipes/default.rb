#
# Cookbook:: script
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

bash "install_something" do
    user "root"
    cwd "/tmp"
    code <<-EOH
     touch somefile
     echo "file created by chef" >> somefile
     cat somefile
    EOH
    not_if do 
        File.exists?("/tmp/somefile")
    end
end 

cookbook_file "/tmp/touchfile" do
    source "touchfile"
    mode 0755
end

execute "touchfile" do
    user "root"
    cwd "/tmp"
    command "./touchfile"
end