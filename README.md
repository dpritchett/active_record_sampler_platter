# ActiveRecordSamplerPlatter

[![Gem Version](https://badge.fury.io/rb/active_record_sampler_platter.png)](http://badge.fury.io/rb/active_record_sampler_platter)
[![Code Climate](https://codeclimate.com/github/dpritchett/active_record_sampler_platter.png)](https://codeclimate.com/github/dpritchett/active_record_sampler_platter)

Adds Array-style :sample methods to ActiveRecord objects

## Installation

Add this line to your application's Gemfile:

    gem 'active_record_sampler_platter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_record_sampler_platter

## Usage

```ruby
# Equivalent to Array#Sample but usable on
# ActiveRecord models and relations!
#
# Returns a result with two quick queries:
#
# > Spree::Product.sample
#    (4.9ms)  SELECT COUNT(*) FROM "spree_products"
#    (3.8ms)  SELECT "spree_products".* FROM
#        "spree_products" LIMIT 1 OFFSET 4132
#
# => #<Spree::Product id: 414, name: "...
#
def sample
  self.offset(rand(self.count)).first
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
