# Install puppet-lint version 2.5.0
exec { 'install_puppet_lint':
  command => '/usr/bin/apt-get -y install puppet-lint=2.5.0',
  path    => ['/usr/bin'],
  unless  => '/usr/bin/puppet-lint --version | grep -q "2.5.0"',
}
