class profile::base(
  Array $ntp_servers,
) {

  class { '::ntp':
    servers => $ntp_servers,
  }

}
