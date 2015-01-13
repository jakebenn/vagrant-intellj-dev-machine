
# Sets the user name and password for the Tomcat administer for the web-based Tomcat management too
default['java-development']['tomcat-user'] = "admin"
default['java-development']['tomcat-user-password'] = "secret"

# Sets the Tomcat JXM port. This is used by IntelliJ to manage Tomcat remotely.
default['java-development']['jmx-remote-port'] = "1099"

# This is the internal (192.168.*) address assigned to the virtual host. The host also has a 10.* IP address which we don't want.
default['java-development']['internal-ipaddress'] =  node[:network][:interfaces][:eth1][:addresses].detect{|k,v| v[:family] == "inet" }.first

# This is the directory under the "webapps" directory in Tomcat that is used for our application
default['java-development']['app-dir'] = 'myapp'

# The JDWP socket is used for remote debugging in IntelliJ. This should match with the port specified in the Debug Run Configuration in IntelliJ.
default['java-development']['jdwp-socket'] = '49174'

# This is a convenience variable so we can easily access the Tomcat home directory our Recipes and Templates
default['java-development']['tomcat-home'] = "#{node['tomcat_latest']['tomcat_install_loc']}/tomcat#{node['tomcat_latest']['tomcat_version']}/apache-tomcat-#{node['tomcat_latest']['tomcat_version']}"
