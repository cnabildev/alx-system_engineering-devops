# 1-install_a_package.pp

# Define a class for installing Flask
class install_flask {
  package { 'python3-pip':
    ensure => installed,
  }

  # Install Flask version 2.1.0 using pip3
  exec { 'install_flask':
    command => '/usr/bin/pip3 install Flask==2.1.0',
    path    => ['/usr/bin'],
    unless  => '/usr/bin/pip3 show Flask | grep Version | grep -q 2.1.0',
  }
}

# Apply the class
include install_flask