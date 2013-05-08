require 'spec_helper'

describe Furter::Accessors::Table do

  let(:table) { Furter::Accessors::Table.new(:label => 'tableView') }
  let(:selector) { table.send(:selector) }

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

  context 'getting table data' do
    it 'can get total number of rows in table with one section' do
      table.should_receive(:frankly_map).with("view:'UITableView' marked:'tableView'", 'numberOfSections').and_return([1])
      table.should_receive(:frankly_map).with("view:'UITableView' marked:'tableView'", 'numberOfRowsInSection:', 0).and_return([5])
      table.row_count.should == 5
    end

    it 'can get total number of rows in table with many sections' do
      table.should_receive(:frankly_map).with("view:'UITableView' marked:'tableView'", 'numberOfSections').and_return([3])
      table.should_receive(:frankly_map).with("view:'UITableView' marked:'tableView'", 'numberOfRowsInSection:', 0).and_return([5])
      table.should_receive(:frankly_map).with("view:'UITableView' marked:'tableView'", 'numberOfRowsInSection:', 1).and_return([3])
      table.should_receive(:frankly_map).with("view:'UITableView' marked:'tableView'", 'numberOfRowsInSection:', 2).and_return([2])
      table.row_count.should == 10
    end

    it 'can get the row count for any section in the table' do
      table.should_receive(:frankly_map).with("view:'UITableView' marked:'tableView'", 'numberOfRowsInSection:', 2).and_return([5])
      table.count_section(2).should == 5
    end

    it 'can get the number of sections in the table' do
      table.should_receive(:frankly_map).with("view:'UITableView' marked:'tableView'", 'numberOfSections').and_return([5])
      table.section_count.should == 5
    end
  end

end