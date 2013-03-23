$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'furter'

require 'rspec-expectations'

World(Furter::Navigation)

APP_BUNDLE_PATH = File.expand_path( '../../../app/FurterApp/Frank/frankified_build/FurterApp.app', __FILE__ )

Frank::Cucumber::FrankHelper.use_shelley_from_now_on
