class sudo {
	file { "/etc/sudoers":
		owner   => root,
		group   => root,
		mode    => 0440,
		source  => "puppet:///modules/sudo/etc/sudoers",
		require => Package["sudo"],
	}

	file { "/etc/sudoers.d":
		force   => true,
		purge   => true,
		recurse => true,
		owner   => root,
		group   => root,
		mode    => 0440,
		require => Package["sudo"],
	}

	file { "/usr/bin/sudo":
		owner   => root,
		group   => root,
		mode    => 4755,
	}

	file { "/usr/sbin/visudo":
		owner   => root,
		group   => root,
		mode    => 0755,
	}

	package { "sudo":
		ensure => present,
	}
}
