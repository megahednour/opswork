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

execute "touchfile" do
    user "root"
    mode 0755
    cwd "/tmp"
    command "./touchfile"
end