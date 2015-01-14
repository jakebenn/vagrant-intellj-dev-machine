# vagrant-intellj-dev-machine
**This is an example Java project illustrating how to setup IntelliJ with Vagrant and Chef to automate the creation
of a virtual development environment.**

My blog post on RandomAnt.net includes full instructions on how to automate the creation of a virtual development
environment on a developer's workstation using Vagrant, Chef and IntelliJ. The road to DevOps enlightenment starts here!
<http://www.RandomAnt.net>

**Note:** This project is licensed under the MIT license. Please
see <https://github.com/jake-bennett/vagrant-intellj-dev-machine/blob/master/LICENSE> for the full license.

**Also note:** The configuration settings in the Chef template
vagrant/chef/cookbooks/java-development/templates/default/sentenv.sh.erb in the java-development cookbook opens up JXM
ports for remote administration in an unsecure manager. Specifically, the CATALINA_OPTS options jmxremote.ssl and
jmxremote.authenticate are both set to false which means this configuration is not secure. This is acceptable for a
local development environment that is only accessible from the host workstation. However, this is not acceptable for
staging and definitely not production. Change this template for these environments to include SSL and authentication.