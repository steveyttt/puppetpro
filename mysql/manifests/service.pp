class mysql::service (
  $enabled,
  $ensure,
){
  service { 'mysqld':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enabled    => true,
    require    => Class['mysql::config'],
  }
}
