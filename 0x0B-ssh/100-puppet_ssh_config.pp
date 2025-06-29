file { '/home/ubuntu/.ssh/config':
  ensure  => file,
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0600',
}

file_line { 'Declare identity file':
  path  => '/home/ubuntu/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^(\s*)IdentityFile',
}

file_line { 'Turn off passwd auth':
  path  => '/home/ubuntu/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^(\s*)PasswordAuthentication',
}
