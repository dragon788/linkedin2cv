# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'linkedin2cv/version'

Gem::Specification.new do |spec|
  spec.name          = "linkedin2cv"
  spec.version       = Linkedin2CV::VERSION
  spec.authors       = ["mefellows"]
  spec.email         = ["matt.fellows@onegeek.com.au"]
  spec.summary       = "Linkedin2CV"
  spec.description   = "Turn your LinkedIn Profile into a professional resume in many formats (PDF / HTML5 / LaTeX / Asciidoc)"
  spec.homepage      = "http://linkedin2cv.onegeek.com.au"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  # Needs to be runtime for deployment on Heroku
  spec.add_runtime_dependency "rspec"
  spec.add_runtime_dependency "rake"
  spec.add_runtime_dependency "clamp"
  spec.add_runtime_dependency "json"
  spec.add_runtime_dependency "log4r"
  spec.add_runtime_dependency "sinatra"
  spec.add_runtime_dependency "sinatra-contrib"
  spec.add_runtime_dependency "sinatra-param"
  spec.add_runtime_dependency "eventmachine"
  spec.add_runtime_dependency "em-websocket", '=0.3.6'
  spec.add_runtime_dependency "thin"
  spec.add_runtime_dependency "foreman"
  spec.add_runtime_dependency "dotenv"
  spec.add_runtime_dependency "sinatra-websocket"

  # Specific App dependencies
  spec.add_runtime_dependency "linkedin-oauth2"
  spec.add_runtime_dependency "haml"
  spec.add_runtime_dependency "asciidoctor"
  spec.add_runtime_dependency "launchy"
  spec.add_runtime_dependency "tilt"
  # spec.add_development_dependency "pact"
  spec.add_development_dependency "webmock"
end
