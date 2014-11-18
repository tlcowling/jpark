Gem::Specification.new do |s|
  s.name          = 'jpark'
	s.version       = '0.0.2'
  s.licenses      = ['MIT']
	s.summary       = "Its the JPark Command line tool!"
	s.description   = "It is a helpful bunch of features for everyone!"
	s.authors       = ['Tom Cowling']
  s.email         = ['tom.cowling@gmail.com']	
	s.files         = ['lib/jpark.rb']
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.add_runtime_dependency 'audite', '~> 0.3.0'
  s.add_runtime_dependency 'thor', '~>0.19.1'

  s.requirements << 'libjack (libjack0 libjack-dev)'
  s.requirements << 'portaudio (libportaudiocpp0 portaudio19-dev)'
  s.requirements << 'mpg123 (libmpg123-dev)'

  s.require_paths = ["lib"]
end
