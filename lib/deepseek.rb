require 'net/http'
require 'json'
module Deepseek
  VERSION = "0.2.0"
  class << self
    attr_accessor :configuration
  end
  class Client
    def initialize
    end

    def chat(parameters:)
      base_uri = URI(Deepseek.configuration.base_uri || "https://api.deepseek.com")
      uri = base_uri + '/chat/completions'
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

  class Configuration
    attr_accessor :api_key, :base_uri
    def initialize
    end
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end
