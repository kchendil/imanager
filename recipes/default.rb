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

script "Install iManager and plugins" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH    
  \"#{imanager_build_loc}\" -DIA_USER_JRE_HOME=\"#{jre_loc}\" -i silent -f \"/tmp/iManager_install.properties\"; "  
  " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_iman_npm}\" ;" 
 " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_idm_npm}\" ;" 
 " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_edir_npm}\" ;" 
 " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_pwd_npm}\" ;" 
 " \"#{jre_loc}/bin/java\" -jar \"#{imanager_nmps_build_loc}\" install #{imanager_webapps} #{imanager_work_catalina} \"#{imanager_nmas_npm}\" ;"
 
  EOH
end




