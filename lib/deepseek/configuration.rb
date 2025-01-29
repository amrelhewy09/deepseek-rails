module Deepseek
  class Configuration
    attr_accessor :api_key

    def initialize
    end
  end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end
