# Deepseek

A wrapper for integrating with the deepseek `chat completions` api.
Project is open source feel free to contribute!

## Installation
- Add `gem "deepseek-rails", "~> 0.2.0"` to your `Gemfile`
- Execute `bundle install`

## Usage
- Create a initializer file `config/initializers/deepseek.rb` and add your `API_KEY` (don't forget the require 😅)
  ```
    require "deepseek"
  
    Deepseek.configure do |config|
      config.api_key = ENV['DEEPSEEK_API_KEY']
      config.base_uri = ENV['DEEPSEEK_BASE_URI'] # (optional if ur hosting it on ur own)
    end

  ```

## Development

Clone the repo and test using `./bin/console` (Write any test code there and run it)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/deepseek-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/deepseek-rails/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Deepseek::Rails project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/deepseek-rails/blob/master/CODE_OF_CONDUCT.md).
