define sudo::service() {
	file { "/etc/sudoers.d/${name}":
		owner   => root,
		group   => root,
		mode    => 0440,
		source  => "puppet:///modules/sudo/etc/sudoers.d/${name}",
		require => Package["sudo"],
	}
}

# vim: tabstop=3