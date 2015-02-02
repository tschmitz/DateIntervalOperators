Pod::Spec.new do |s|
  s.name = 'DateIntervalOperators'
  #s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'A set of extensions and operators for manipulating dates in Swift'
  s.homepage = 'https://github.com/tschmitz/DateIntervalOperators'
  s.authors = { 'Tim Schmitz' => 'tim@tapandtonic.net' }
  s.source = { :git => 'https://github.com/tschmitz/DateIntervalOperators.git', :commit => "7fbba6397edafaf2c649e50e5e99f158ea3f09ad" }
  
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = '*.swift'
end