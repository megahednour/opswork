service 'tomcat' do
    service_name 'tomcat7'
    supports :restart => true, :reload => false, :status => true
    action :nothing
end