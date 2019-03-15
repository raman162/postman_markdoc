Gem::Specification.new do |s|
  s.name        = 'postman_markdoc'
  s.version     = '0.0.2'
  s.date        = '2019-03-15'
  s.summary     = 'Convert Postman Collections to Markdown'
  s.authors     = ['Raman Walwyn-Venugopal']
  s.email       = 'ramanvenu94@gmail.com'
  s.files       = [
                    'lib/postman_markdoc.rb',
                    'lib/postman_markdoc/markdown_generator.rb',
                    'lib/postman_markdoc/collection_parser.rb',
                    'lib/postman_markdoc/request_parser.rb'
                  ]
  s.homepage    = 'https://rubygems.org/gems/postman_markdoc'
  s.license     = 'MIT'
  s.executables << 'postman_markdoc'
end
