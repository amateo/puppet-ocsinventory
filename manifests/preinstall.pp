# == Class ocsinventory::preinstall
#
class ocsinventory::preinstall {
#  if $::ocsinventory::manage_repo {
#    $apt_repo_key = ''
#
#    case $::osfamily {
#      'RedHat': {
#        yumrepo { 'repo':
#          descr    => 'descr',
#          baseurl  => 'basurl',
#          gpgkey   => 'gpgkey',
#          enabled  => 1,
#          gpgcheck => 1;
#        }
#      }
#
#      'Debian': {
#        apt::key { $apt_repo_key:
#          ensure => present,
#          notify => Exec['ocsinventory apt-get update'],
#        }
#
#        if defined('::apt::source') {
#          # Puppetlabs/apt module
#          apt::source { 'repo':
#            location    => 'baseurl',
#            release     => $::lsbdistcodename,
#            repos       => 'main',
#            include_src => false,
#            key         => $apt_repo_key,
#          }
#        }
#
#        if defined('::apt::sources_list') {
#          # Camp2Camp/apt module
#          apt::sources_list { 'repo':
#            ensure  => present,
#            source  => false,
#            content => '',
#            notify  => Exec['apt-get update'],
#            require => Apt::Key[$apt_repo_key],
#          }
#        }
#
#        exec { 'ocsinventory apt-get update':
#          command     => 'apt-get update',
#          path        => '/usr/bin',
#          refreshonly => true,
#        }
#      }
#
#      default: {
#        fail "Operating system ${::operatingsystem} is not supported yet."
#      }
#    }
#  }
}

