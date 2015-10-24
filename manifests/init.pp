class bitbucket_org {
	sshkey { 'bitbucket.org':
		ensure       => present,
                host_aliases => ['131.103.20.167', '131.103.20.168', '131.103.20.169', '131.103.20.170'],
		key          => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAubiN81eDcafrgMeLzaFPsw2kNvEcqTKl/VqLat/MaB33pZy0y3rJZtnqwR2qOOvbwKZYKiEO1O6VqNEBxKvJJelCq0dTXWT5pbO2gDXC6h6QDXCaHo6pOHGPUy+YBaGQRGuSusMEASYiWunYN0vCAI8QaXnWMXNMdFP3jHAJH0eDsoiGnLPBlBp4TNm6rYI74nMzgz3B9IikW4WVK+dc8KZJZWYjAuORU3jc1c/NPskD2ASinf8v3xnfXeukU0sJ5N6m5E8VLjObPEO+mN2t/FZTMZLiFqPWc/ALSqnMnnhwrNi2rbfg/rd/IpL8Le3pSBne8+seeFVBoGqzHM9yXw==',
		type         => 'ssh-rsa'
	}

	file { '/etc/ssh/ssh_known_hosts':
		ensure => file,
		mode   => '0644',
		owner  => 'root',
		group  => 'root',
	}
}
