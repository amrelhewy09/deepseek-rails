require 'net/http'
require 'json'
module Deepseek
  class Client
    BASE_URI = URI('https://api.deepseek.com')
    def initialize
    end

    def chat(parameters:)
      uri = BASE_URI + '/chat/completions'
      request = Net::HTTP::Post.new(uri, headers)
      request.body = parameters.to_json

      response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(request)
      end
      JSON.parse(response.body)

    rescue StandardError => e
      raise DeepseekClientError, e.message
    end

    private

    def headers
      {
        'Content-Type' => 'application/json',
        'Authorization' => "Bearer #{Deepseek.configuration.api_key}"
      }
    end
  end
  class DeepseekClientError < StandardError; end
end
