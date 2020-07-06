Gem::Specification.new do |s|
  s.name = "anndb"
  s.author = "Marek Galovic"
  s.version = "0.0.1"
  s.licenses = ['Apache-2.0']
  s.date = "2020-06-20"
  s.summary = "AnnDB client for Ruby"
  s.homepage = "https://github.com/marekgalovic/anndb-client-ruby"
  s.files = Dir['lib/**/*.rb']
  s.require_paths = ["lib"]

  # Dependencies
  s.add_runtime_dependency 'grpc', '~>1.28.0'
  s.add_runtime_dependency 'google-protobuf', '~>3.12.2'
end