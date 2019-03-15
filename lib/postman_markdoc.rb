require 'json'

class PostmanMarkdoc

  # accepts filenames as arguments
  # returns markdown string
  def self.files_to_markdown(*file_names)
    raw_json = file_names.map{|f| IO.read(f)}
    collections = raw_json.map{|json| JSON.parse(json)}
    self.new(*collections).markdown
  end

  # accepts raw json collection string as argument
  # returns markdown string
  def self.raw_json_to_markdown(raw_json)
    collection = JSON.parse(raw_json)
    self.new(collection).markdown
  end

  attr_reader :collections, :markdown

  # accepts hash representations of postman json collections
  def initialize(*args)
    @collections = args
    generate_markdown
  end

  def generate_markdown
    @markdown = ""
    collections.each do |collection|
      @markdown << PostmanMarkdoc::MarkdownGenerator.generate(
                    data: collection
                   ).content
    end
  end

end

require_relative 'postman_markdoc/collection_parser.rb'
require_relative 'postman_markdoc/markdown_generator.rb'
require_relative 'postman_markdoc/request_parser.rb'
