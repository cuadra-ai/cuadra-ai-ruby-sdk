Gem::Specification.new do |s|
  s.name = 'cuadra-ai-sdk'
  s.version = '1.0.4'
  s.summary = 'Cuadra AI SDK'
  s.description = 'Build AI agents with your own data, accelerate time-to-value, and create solutions as unique as your business.'
  s.authors = ['Cuadra AI']
  s.email = ['dan@cuadra.ai']
  s.homepage = 'https://cuadra.ai/'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.1')
  s.add_dependency('apimatic_core', '~> 0.3.17')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.4')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
