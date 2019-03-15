class PostmanMarkdoc::MarkdownGenerator

  def self.generate(*args)
    generator = self.new(*args)
    generator.generate
    generator
  end

  attr_reader :data, :content

  def initialize(options = {})
    @data = options[:data]
    @content = options[:content] || ""
  end

  def generate
    collection = PostmanMarkdoc::CollectionParser.new(data)
    @content << "## #{collection.name}\n\n"
    if collection.description != nil
      @content << "#{collection.description}\n\n"
    end
    collection.requests.each do |request|
      @content << "### #{request.method} #{request.name}\n\n"
      @content << "```\n#{request.url}\n```\n\n"
      if request.description. != nil
        @content << "#{request.description}\n\n"
      end
      if request.headers != []
        @content << "#### Headers\n\n```\n"
        request.headers.each do |header|
          @content << header['key']
          @content << "\t\t\t\t\t"
          @content << header['value']
          @content << "\n"
        end
        @content << "```\n\n"
      end
      @content << "#### Body\n\n```\n#{request.body}\n```\n\n"
    end
  end

end
