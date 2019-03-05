if node[:platform] == 'debian' or node[:platform] == 'ubuntu'
     directory "/srv/www/shared" do 
         mode 0755
         owner 'root'
         group 'root'
         recursive true
         action :create
     end
    else
        log "Unsupported system"
    end

    