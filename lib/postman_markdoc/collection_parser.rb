class PostmanMarkdoc::CollectionParser

  attr_reader :data

  def initialize(data)
    @data = data
  end

  def name
    data['info']['name']
  end

  def description
  end

  def requests
    @requests = item.map{|i| PostmanMarkdoc::RequestParser.new(i)}
  end

  private

  def item
    @data['item'] || []
  end

end
