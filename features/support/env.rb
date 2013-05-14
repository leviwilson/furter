$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'furter'
require 'require_all'

require 'rspec-expectations'

World(Furter::Navigation)

require_rel '/screens'

APP_BUNDLE_PATH = File.expand_path( '../../../app/FurterApp/Frank/frankified_build/FurterApp.app', __FILE__ )

Frank::Cucumber::FrankHelper.use_shelley_from_now_on

Furter::Navigation.routes = {
    :default => [],
    :crazy_route => [
        [DetailPage, :button_text],
        [DetailPage, :button_label],
        [DetailPage, :switch_toggle],
        [DetailPage, :go_elsewhere],
        [ElsewherePage, :active?]
    ],
    :goto_tables => [
        [DetailPage, :button_table],
        [TablesPage]
    ]
}
