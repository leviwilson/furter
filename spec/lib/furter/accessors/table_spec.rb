require 'spec_helper'

describe Furter::Accessors::Table do

  let(:table) { Furter::Accessors::Table.new(:label => 'tableView') }
  let(:selector) { slider.send(:selector) }

  context 'locating table' do
    it 'can be found by id' do
      tv = Furter::Accessors::Table.new(:label => 'tableLabel')
      tv.send(:selector).should eq("view:'UITableView' marked:'tableLabel'")
    end
  end

  context 'selecting table items' do
    it 'can select an item by index' do
      table.should_receive(:touch).with("view:'UITableView' marked:'tableView' tableViewCell index:0")
      table.item_at(0)
    end
  end
end