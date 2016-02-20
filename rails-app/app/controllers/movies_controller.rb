require 'net/http'
require 'uri'

class MoviesController < ApplicationController
  def find
    data = {"SearchString" => params[:title]}
    uri = URI.parse('https://services.sls1.cdops.net/Subscriber/SearchProducts')
    http = Net::HTTP.new(uri.host, uri.port)

    request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json',
      'CD-DistributionChannel' => '20389393-b2e4-4f65-968e-75a5227e544c',
      'CD-SystemId' => 'e5ce3167-4e0b-4867-a8c3-c8f23aec5e71'})
    request.body = data.to_json

    http.use_ssl = (uri.scheme == "https")

    @response = http.request(request).read_body
  end
end
