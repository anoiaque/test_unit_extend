specifications = Gem::Specification.new do |spec| 
  spec.name = "test_unit_extend"
  spec.version = "1.0.0"
  spec.author = "Philippe Cantin"
  spec.homepage = "http://github.com/anoiaque/test_unit_extend"
  spec.platform = Gem::Platform::RUBY
  spec.summary = "Provide extensions to Test::Unit. #before_test, #should_have_callbcks ...."
  spec.description = "Provide extensions to Test::Unit. #before_test, #should_have_callbcks ...."
  spec.files = Dir['lib/**/*.rb']
  spec.require_path = "lib"
  spec.test_files  = Dir['test/**/*.rb']
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README.rdoc"]
end