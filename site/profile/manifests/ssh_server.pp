class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key {'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD518cTubNaCq9japCT+3nmLEGQrmUJmOIq26qHLK8vcTy0pNQj/H6nDpKsDlm8sKVXxhrwqZNb006IUHsr1/v+mJlEwHiT4hrlFC+3/gq1XDe1JUMVbwzUBO9lVY061yHF8uAZCYbu9dKAPcm/52sgfVRiGj6FEP39bN4ucwsobI/DFcDO010SKsm6fzVuXSQU7vyuYjmFjGVVG4mfs5oIRQ5nNZqBVaIdh958tlr2qNFLXJOuLoI7Tz2tpgJBAbkEHxdvm/8DOgFlgpDQvSpvlJ+v/mgBYdlotWQhF00Vd/+2c4Pw+A4TmVT8YooBnhudvrCv90gpU9UmV//WD1+B',
        }
}
