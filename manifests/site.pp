node default {
  file { '/root/README.txt':
    ensure  => file,
    content => 'This is a README file',
    owner   => 'root',
  }
}
