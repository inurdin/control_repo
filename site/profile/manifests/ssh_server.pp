class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCqdXxtiRAsAyXcol6IBfz6BpPe1AMkPFkdxiwdbBTw8MfvDrr17Zzw3dCc9/YwXzYB5nItCvhvuNmPKKnL6drPuSoeO9E5voZHsj9ONqoR31RvD59d4rHj0Rj8h9+UV458BeKg8zxq5fCwmfa6KhdYZYi7ZLxB0g6ESGP38y2JNOYSeSMK7jMjBpQh6wB4WFx/lVO6KDLS+fvfHUZT1Zba3EMJ3408fCRWLrPhPZ3Vvu0iP9MKoGAupUbQU8u4R+cUZpMnvAY+ao1l6lxZl91VkGgue01R3JqrC904iAi6tDM4JDGyJwjj1oZH/NzI7App5RYzYBWHbL+gAPvlfZ/T',
  }  
}
