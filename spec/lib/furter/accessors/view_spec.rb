require 'spec_helper'

describe Furter::Accessors::View do
  context 'locating views' do
    it 'can be found by accessibility label' do
      by_label = Furter::Accessors::View.new(:label => 'id')
      by_label.send(:selector).should eq("view marked:'id'")
    end

    it 'can use a custom type' do
      by_type = Furter::Accessors::View.new(:type => 'UICustomType', :label => 'id')
      by_type.send(:selector).should eq("view:'UICustomType' marked:'id'")
    end

    it 'can pass extra information as well' do
      with_extras = Furter::Accessors::View.new(:label => 'id', :extra => 'label')
      with_extras.send(:selector).should eq("view marked:'id' label")
    end
  end
end