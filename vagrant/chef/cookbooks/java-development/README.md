#java-development

Description
===========

Configures a virtual server with Tomcat installed to be used on a development workstation with the IntelliJ IDE

Requirements
============

Platform:

* CentOS

The following cookbooks are dependencies:

* java
* tomcat_latest

Attributes
==========


* `node['java-development']['tomcat-user'] = "admin"` - Sets the user name for the Tomcat administer for the web-based Tomcat management tool
* `node['java-development']['tomcat-user-password'] = "secret"` - Sets the password for the Tomcat administrator
* `node['java-development']['jmx-remote-port'] = "1099"` - Sets the Tomcat JXM port. This is used by IntelliJ to manage Tomcat remotely.
* `node['java-development']['internal-ipaddress'] =  node[:network][:interfaces][:eth1][:addresses].detect{|k,v| v[:family] == "inet" }.first` - This
is the internal (192.168.*) address assigned to the virtual host. The host also has a 10.* IP address which we don't want.
* `node['java-development']['app-dir'] = 'myapp'` - This is the directory under the "webapps" directory in Tomcat that is used for our application
* `node['java-development']['jdwp-socket'] = '49174'` - The JDWP socket is used for remote debugging in IntelliJ. This should match with the port specified in the Debug Run Configuration in IntelliJ.
* `node['java-development']['tomcat-home'] = "#{node['tomcat_latest']['tomcat_install_loc']}/tomcat#{node['tomcat_latest']['tomcat_version']}/
apache-tomcat-#{node['tomcat_latest']['tomcat_version']}"` - This is a convenience variable so we can easily access the Tomcat home directory our Recipes and Templates



Usage
=====

Include this cookbook when you want to setup a Java development workstation to do remote deployment and debugging
on a local virtual server running Tomcat

License and Author
==================

Author:: Jake Bennett (<http://www.RandomAnt.net>)
Copyright:: 2014, Jake Bennett, RandomAnt

This is licensed under the MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


