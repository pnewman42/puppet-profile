class profile::apache(
  Boolean $default_vhost = true,
  Hash $apache_vhost_servers,
#  Integer $port = 80,
#  String $docroot = '/var/www',
) {
  class { '::apache':
    default_vhost => $default_vhost,
  }

  create_resources(::apache::vhost, $apache_vhost_servers)

#  ::apache::vhost { 'pnewman422.mylabserver.com':
#    port    => $port,
#    docroot => $docroot,
#    before  => File["${docroot}/index.html"],
#  }

  file { "${docroot}/index.html":
  ensure  => file,
  content => "Test page. This is a test",
  }


}

