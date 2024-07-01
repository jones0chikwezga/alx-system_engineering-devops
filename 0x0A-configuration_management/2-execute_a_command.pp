#Using Puppet, create a manifest that kills a process named killmenow
  
exec { 'pkill -f killme now':
  path => '/usr/bin/:/usr/local/bin/:/bin/',
}""
