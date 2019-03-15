class PostmanMarkdoc::RequestParser

  attr_reader :data

  def initialize(data)
    @data = data
  end

  def name
    data['name']
  end

  def description
    request['description']
  end

  def method
    request['method']
  end

  def headers
    @headers ||= request['header'] || []
  end

  def body
    request['body']['raw']
  end

  def url
    request['url']['raw']
  end

  def request
    data['request']
  end

end
