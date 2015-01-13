
name "java-dev-workstation"

default_attributes( 

  # We want version 8 of Java. At this time, only Oracle provides this (not OpenJDK). 
  # Because it's Oracle, we need to agree to the terms and conditions.
  :java => { 
    :install_flavor => 'oracle',
    :jdk_version => '8',
    :accept_license_agreement => true,
    :oracle => { "accept_oracle_download_terms" => true } 
  }, 

  :tomcat_latest => {
    :tomcat_install_loc => '/usr/share',
    :java_options => '${JAVA_OPTS} -Xmx128M',
    :auto_start => false
  }

)

run_list(
  "recipe[java]",
  "recipe[tomcat_latest]",
  "recipe[java-development]"
)
