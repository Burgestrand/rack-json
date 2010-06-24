# encoding: utf-8

Gem::Specification.new do |gem|
  gem.version  = "0.0.1"
  gem.required_rubygems_version = ">= 1.3.6"
  gem.required_ruby_version = ">= 1.8"
  
  # metadata
  gem.name     = 'rack-json'
  gem.summary  = 'Rack middleware that transoform request response into JSON'
  gem.homepage = 'http://github.com/Burgestrand/rack-json'
  gem.author   = 'Kim Burgestrand'
  gem.email    = 'kim@burgestrand.se'
  gem.license  = '(MIT) X11 License'
  gem.description = IO.read('./README.markdown')
  
  # installation
  gem.files         = Dir['lib/rack/json.rb']
  
  # documentation
  gem.rdoc_options = ['--charset=UTF-8']
end