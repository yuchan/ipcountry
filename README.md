# Ipcountry

ruby gem for looking up ip address information.
powered by http://ip-api.com/docs/api:json

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ipcountry'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ipcountry

## Usage

    $ require 'ipcountry'
    $ info = Ipcountry::Info.new("ip address")
    $ info.country # => "Country name"

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ipcountry/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
