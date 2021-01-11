require 'net/http'

class Thing

  def get_example
    uri = URI('http://example.com/index.html')
    params = { :limit => 10, :page => 3 }
    uri.query = URI.encode_www_form(params)

    Net::HTTP.get_response(uri)
  end


end
