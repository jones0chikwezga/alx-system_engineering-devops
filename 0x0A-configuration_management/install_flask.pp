# install_flask.pp

# Ensure Python3 is installed
package { 'python3':
  ensure => installed,
}

# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
  require => Package['python3'],
}

# Ensure Flask 2.1.0 is installed using pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  unless  => '/usr/local/bin/pip3 show flask | grep Version | grep -q 2.1.0',
  require => Package['python3-pip'],
}

