Pod::Spec.new do |s|
  s.name = 'Jolt'
  s.version = '0.4.0'
  s.license = 'MIT'
  s.summary = 'Swift + Accelerate for Vector Math'
  s.homepage = 'https://github.com/scottrhoyt/Jolt'
  s.social_media_url = 'http://twitter.com/scotthoyt'
  s.authors = { 'Scott Hoyt' => 'scottrhoyt@gmail.com' }

  # Need to change this!
  s.source = { :git => 'https://github.com/scottrhoyt/Jolt.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Jolt/Source/**/*.swift'
  s.module_name = 'Jolt'
  s.frameworks = 'Accelerate'
  s.requires_arc = true

end
