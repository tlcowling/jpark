Gem::Specification.new do |s|
  s.name          = 'jpark'
	s.version       = '0.0.1'
  s.licenses      = ['MIT']
	s.summary       = "Its the JPark Command line tool!"
	s.description   = "It is a helpful bunch of features for everyone!"
	s.authors       = ['Tom Cowling']
  s.email         = ['tom.cowling@gmail.com']	
	s.files         = ['lib/jpark.rb']
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
