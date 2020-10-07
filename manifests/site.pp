node default {
  file { '/root/README.txt':
    ensure => file,
  }
}
