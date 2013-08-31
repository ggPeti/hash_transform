# HashTransform

This gem extends the Hash class with the following methods:

map_keys
map_keys!
map_values
map_values!

The bang version of each method will map the keys or values of the hash
with the given block and change it. The non-bang version will return a
new hash.

## Installation

Add this line to your application's Gemfile:

    gem 'hash_transform'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hash_transform

## Usage

Just require the gem directly or through Bundler, and the methods will 
be available.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
