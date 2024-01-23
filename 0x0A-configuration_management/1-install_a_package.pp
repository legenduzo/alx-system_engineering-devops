# installs flask
package { 'python3-pip':
  ensure => installed,
}

package { 'Werkzeug':
  ensure   => installed,
  provider => 'pip3',
  require  => Package['python3-pip'],
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => [Package['python3-pip'], Package['Werkzeug']],
}
