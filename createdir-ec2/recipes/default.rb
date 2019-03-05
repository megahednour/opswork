user "nour" do
  home "/home/newuser"
  shell "/bin/bash"
 end

[ "/srv/www/#{node['createdir']['shared']}", "/srv/www/#{node['createdir']['config']}" ].each do |path|
directory path do
 mode node ['createdir']['mode']
 mode node ['createdir']['owner']
 group node ['creatdir']['group']
 recursive true
 action :create
 end

directory "/home/user/nour" do
 mode 0755
 owner 'nour'
 recursive true
 action :create
 end

directory "/srv/www/shared" do
  mode 0755
  owner 'root'
  group 'root'
  recursive true
  action :create
 end


if platform?("debian", "ubuntu")
  directory "/srv/www/os" do
    mode 0755
    owner 'root'
    group 'root'
    recursive true
    action :create
  end
else
  log "Unsupported system"
 end
end
