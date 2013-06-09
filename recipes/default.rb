#
# Cookbook Name:: imanager
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

imanager_build_loc=node['imanager']['imanager_build_loc']
imanager_nmps_build_loc=node['imanager']['imanager_nmps_build_loc']
imanager_webapps=node['imanager']['imanager_webapps']
imanager_work_catalina=node['imanager']['imanager_work_catalina']
imanager_iman_npm=node['imanager']['imanager_iman_npm']
imanager_idm_npm=node['imanager']['imanager_idm_npm']
imanager_edir_npm=node['imanager']['imanager_edir_npm']
imanager_pwd_npm=node['imanager']['imanager_pwd_npm']
imanager_nmas_npm=node['imanager']['imanager_nmas_npm']
jre_loc=node['imanager']['jre_loc']



template "/tmp/iManager_install.properties" do
  source "iManager_install.properties.erb"
  owner "root" 
  mode "0644"  
end

execute "Install iManager" do
 user "root" 
 cwd "/tmp"
 command " \"#{imanager_build_loc}\" -DIA_USER_JRE_HOME=\"#{jre_loc}\" -i silent -f \"/tmp/iManager_install.properties\"; "  
 action :run
end

execute "Install iManager Base plugin" do
 user "root" 
 cwd "/tmp"
 command " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_iman_npm}\" ;" 
 action :run
end

execute "Install iManager IDM plugin" do
 user "root" 
 cwd "/tmp"
 command " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_iman_npm}\" ;" 
 action :run
end

execute "Install iManager eDir plugin" do
 user "root" 
 cwd "/tmp"
 command " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_edir_npm}\" ;" 
 action :run
end

execute "Install iManager Pwd Mgmt plugin" do
 user "root" 
 cwd "/tmp"
 command " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_pwd_npm}\" ;"
 action :run
end

execute "Install iManager NMAS plugin" do
 user "root" 
 cwd "/tmp"
 command " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_nmas_npm}\" ;"
 action :run
end


execute "Install IDM plugins" do
 user "root" 
 cwd "/tmp"
 command " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_idm_npm}\" ;"
 action :run
end



