# executes killmenow
exec { 'killmenow':
  command => 'usr/bin/pkill killmenow',
}
