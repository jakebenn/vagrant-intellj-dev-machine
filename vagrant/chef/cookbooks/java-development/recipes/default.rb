#
# Cookbook Name:: java-development
# Recipe:: default
#

tomcat_version = node['tomcat_latest']['tomcat_version']
tomcat_home    = node['java-development']['tomcat-home']

# Link the synced /webapps directory on the guest VM to the Tomcat web application directory on the guest VM
link "#{tomcat_home}/webapps/#{node['java-development']['app-dir']}" do
  to "/webapp"
end

# Upload the XML file that governs users and access to the Tomcat admin application
template "#{tomcat_home}/conf/tomcat-users.xml" do
  source 'tomcat-users.xml.erb'
  mode '0600'
  owner 'root'
  group 'root'
end

# Upload the config file that sets the Tomcat config settings to allow IntelliJ to communicate with Tomcat via JMX
template "#{tomcat_home}/bin/setenv.sh" do
  source 'setenv.sh.erb'
  mode '0755'
  owner 'root'
  group 'root'
end

# Place the Tomcat startup script in the init.d directory so we can set Tomcat to start automatically on reboot
template "/etc/init.d/tomcat#{tomcat_version}" do
  source "tomcat#{tomcat_version}.erb"
  mode '0755'
  owner 'root'
  group 'root'
end

# Run chkconfig to configure our Tomcat startup script to execute at run levels 2-5
execute 'chkconfig --level 2345 tomcat7 on'

# Start Tomcat
execute "#{tomcat_home}/bin/catalina.sh start"


