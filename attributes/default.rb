#
# Cookbook Name:: jetty
# Attributes:: default
#
# Copyright 2010, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# default tomcat attributes

default['imanager']['imanager_build_loc'] = "/home/vagrant/IDM402AE/test/products/iManager/installs/linux/iManagerInstallLinux.bin"
default['imanager']['imanager_nmps_build_loc'] = "/home/vagrant/IDM402AE/test/products/iManager/installs/linux/configuration/iManInstallNPMs.jar"
default['imanager']['imanager_configure_build_loc'] = "/home/vagrant/IDM402AE/test/products/iManager/installs/linux/configuration/iManagerConfig.jar"
default['imanager']['imanager_webapps'] = "/var/opt/novell/tomcat5/webapps/nps"
default['imanager']['imanager_work_catalina'] = "/var/opt/novell/tomcat5/work/Catalina/localhost/nps"
default['imanager']['imanager_iman_npm'] = "/home/vagrant/IDM402AE/test/products/iManager/imansp.npm"
default['imanager']['imanager_idm_npm'] = "/home/vagrant/IDM402AE/test/products/IDM/linux/setup/packages/imanplugins/27/IDMPlugins_IMAN_2_7_IDM_4_0_2_0.npm"
default['imanager']['imanager_edir_npm'] = "/home/vagrant/IDM402AE/test/products/iManager/installs/plugins/eDir_88_iMan27_Plugins.npm"
default['imanager']['imanager_pwd_npm'] = "/home/vagrant/IDM402AE/test/products/iManager/installs/plugins/PwdManagementPlugins_IMAN_2_7.npm"
default['imanager']['imanager_nmas_npm'] = "/home/vagrant/IDM402AE/test/products/iManager/installs/plugins/nmas.npm"

default['imanager']['jre_loc'] = "/root/idm/jre"
default['imanager']['imanager_http_port'] = "8080"
default['imanager']['imanager_https_port'] = "8443"
