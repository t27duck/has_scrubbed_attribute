# HasScrubbedAttribute

Prevent unwanted (and unsafe) HTML input from users before it enters your database by marking specific attributes on ActiveRecord models to be scrubbed of HTML markup before validations run.

Sanitizing is done using the [loofah](https://github.com/flavorjones/loofah) gem

Tested on Ruby versions 1.9.3, 2.0.x, 2.1.x, and 2.2.x with ActiveRecord 3.2 - 4.2.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'has_scrubbed_attribute'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install has_scrubbed_attribute

## Usage

Simply include the gem in any ActiveRecord model and tell it which attributes you want to scrub clear of HTML.

```ruby
class Post < ActiveRecord::Base
  include HasScrubbedAttribute

  has_scrubbed_attribute :title
  has_scrubbed_attribute :subtitle
end
```

```irb
post = Post.new
post.title = "<strong>Some title</strong>"
post.subtitle = "I have markup <em>too!</em>"
post.save
post.title
=> "Some title"
post.subtitle
=> "I have markup too!"
```

## Testing

Run tests with `bundle exec rake spec`. The tests use an in-memory SQLite3 database.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/has_scrubbed_attribute/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
