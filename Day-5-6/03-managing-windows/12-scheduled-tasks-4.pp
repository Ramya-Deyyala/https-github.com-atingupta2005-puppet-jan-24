#To run every time the computer boots.
scheduled_task { 'Disk Cleanup On Restart':
  ensure        => 'present',
  compatibility => 2,
  command       => "C:\\Windows\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
  arguments     => '-File "C:\\hello-script.ps1"',
  enabled       => 'true',
  trigger       => [{
    'schedule'  => 'boot',
    'minutes_interval' => '60',
    'minutes_duration' => '720'
  }],
  user          => 'system',
}
