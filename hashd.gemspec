Gem::Specification.new do |s|
  s.name        = 'fuprint'
  s.version     = '0.0.1'
  s.date        = '2017-07-14'
  s.summary     = "Hash dot syntax"
  s.description = "Give any hash dot syntax. Supports nested properties, mutates original hash."
  s.authors     = ["Fugroup Limited"]
  s.email       = 'mail@fugroup.net'

  s.homepage    = 'https://github.com/fugroup/hashd'
  s.license     = 'MIT'

  s.add_development_dependency 'futest', '>= 0'

  s.require_paths = ['lib']
  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
end
