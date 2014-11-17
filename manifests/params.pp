# == Class ocsinventory::params
#
class ocsinventory::params {
  $agent             = true
  $agent_ocs_mode    = 'cron'
  $agent_ocs_pause   = 100
  $agent_ocs_server  = undef
  $agent_ocs_tag     = undef

  $manage_repo       = false
  $manage_vhost      = false
  $pkg_agent_ensure  = present
  $pkg_server_ensure = present
  $server            = false

  case $::osfamily {
    'RedHat': {
      $config_dir         = '/etc/ocsinventory'
      $config_dir_mode    = '0755'
      $config_dir_recurse = false
      $config_file_mode   = '0644'
      $config_group       = 'root'
      $config_user        = 'root'
      $log_dir            = undef
      $pkg_deps           = undef

      $pkg_list_agent     = [
        'ocsinventory-agent',
        'ocsinventory-ipdiscover',
        'perl-LWP-Protocol-https',
      ]

      $pkg_list_server    = [
        'ocsinventory-reports',
        'ocsinventory-server',
      ]
    }

    default: {
      fail "Operating system ${::operatingsystem} is not supported."
    }
  }
}
