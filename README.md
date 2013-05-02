# Furter
[![Build Status](https://travis-ci.org/leviwilson/furter.png)](https://travis-ci.org/leviwilson/furter)

A gem to assist in building page-object like structures for testing iOS applications.  `furter` uses [`frank-cucumber`](http://testingwithfrank.com/) to automate iOS applications using page-objects.

## Installation

Add this line to your application's Gemfile:

    source 'https://rubygems.org'
    gem 'furter'

And then execute:

    $ bundle
    
### Setting Up Cucumber
After your `Gemfile` has been updated, add these lines to your `features/support/env.rb` file in `cucumber`:

```ruby
require 'furter'
require 'rspec-expectations'

World(Furter::Navigation)

APP_BUNDLE_PATH = File.expand_path( '../../../Frank/frankified_build/YourApp.app', __FILE__ )

Frank::Cucumber::FrankHelper.use_shelley_from_now_on

Before do
  version = '6.1'
  idiom = 'iPhone'
  
  launch_app APP_BUNDLE_PATH, version, idiom
end
```

## Defining Screens
Simply create a new class that describes the screen that you are working with and include `Furter`.

```ruby
class LoginScreen
  include Furter
  
  text(:username, :label => 'usernameField')
  text(:password, :label => 'passwordField')
  button(:login, :text => 'Login')
end
```

In your step definition, use the `Furter::Navigation#on` method when using your page-object.  This method will create your screen and then wait until all animations have stopped before letting you interact with your page-object.

```ruby
When ^I login to my application$ do
  on(LoginScreen) do |screen|
    screen.username = 'user@example.com'
    screen.password = '$3cr3t`
    screen.login
  end
end
```

### Waiting for Screens
If you would like for `furter` to wait until your screen becomes "active" (perhaps after some asynchronous call has come back), simply define an `active?` method and `furter` will wait until this returns `true` before interacting with it.

```ruby
class LandingScreen
  include Furter
  
  def active?
    has_text? 'You have successfully logged in!'
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
