require 'spec_helper'

describe Furter::Accessors::Table do

  let(:table) { Furter::Accessors::Table.new(:label => 'tableView') }
  let(:selector) { table.send(:selector) }

  context 'locating table' do
    it 'can be found by id' do
      table.send(:selector).should eq("view:\"UITableView\" marked:\"tableView\"")
    end
  end

  context 'selecting table items' do
    it 'can select an item by index' do
      table.should_receive(:touch).with("view:\"UITableView\" marked:\"tableView\" tableViewCell index:0")
      table.touch_index(0)
    end
  end
end
