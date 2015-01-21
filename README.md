# Itebooks

A really simple gem to query it ebooks info from www.it-ebooks.info, the api is provided by the website.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itebooks'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itebooks

## Usage

```ruby
  require ‘itebooks’
  Itebooks::Base.search(“mysql”)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/itebooks/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
