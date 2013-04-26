#
# Cookbook Name:: imanager
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

imanager_configure_build_loc=node['imanager']['imanager_configure_build_loc']
jre_loc=node['imanager']['jre_loc']
imanager_http_port=node['imanager']['imanager_http_port']
imanager_https_port=node['imanager']['imanager_https_port']



template "/tmp/iManager_install.properties" do
  source "iManager_install.properties.erb"
  owner "root" 
  mode "0644"  
end

execute "Configure iManager" do
 user "root" 
 cwd "/tmp"
 command " \"#{jre_loc}/bin/java\" -jar \"#{imanager_configure_build_loc}\" \"#{imanager_http_port}\" \"#{imanager_https_port}\" "  
 action :run
end