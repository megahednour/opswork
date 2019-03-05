[ "/home/ubuntu/#{node['cond_logic']['shared_dir']}", "/home/ubuntu/#{node['cond_logic']['config_dir']}" ].each do |path|
 directory path do
    mode node['cond_logic']['mode']
    owner node['cond_logic']['owner']
    group node['cond_logic']['group']
    recusrive true
    action :create
 end
end 