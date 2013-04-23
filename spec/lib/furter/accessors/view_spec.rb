require 'spec_helper'

describe Furter::Accessors::View do
  let(:view) { Furter::Accessors::View.new(:label => 'id') }
  let(:selector) { view.send(:selector) }

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

    it 'can be found by text' do
      by_text = Furter::Accessors::View.new(:text => "Some Text")
      by_text.send(:selector).should eq("view text:'Some Text'")
    end
  end

  it 'can be clicked' do
    view.should_receive(:wait_for_and_touch).with(selector)
    view.click
  end

  it 'knows if it is visible' do
    view.should_receive(:element_is_not_hidden).with(selector).and_return(true)
    view.should be_visible
  end

  it 'knows if it is enabled' do
    view.should_receive(:frankly_map).with(selector, 'isEnabled').and_return([true])
    view.should be_enabled
  end

  context 'screen with one view responder' do

    before(:each) do
      view.should_receive(:frankly_map).with("view:'UIView'", 'nextResponder').and_return(['<First>'])
      @views = view.next_responders
    end

    it 'can report screen element was found' do
      @views.include? 'First'.should be_true
    end

    it 'can report screen element was not found' do
      @views.include?('Second').should be_false
    end
  end

  context 'screen with many view responders' do
    before(:each) do
      view.should_receive(:frankly_map).with("view:'UIView'", 'nextResponder').and_return(['<First>', '<Second>', '<Third>'])
      @views = view.next_responders
    end

    it'can find the first element' do
      @views.include? 'First'.should be_true
    end

    it'can find the middle element' do
      @views.include? 'Second'.should be_true
    end

    it 'can find all the elements' do
      @views.include? 'Third' 'First' 'Second'.should be_true
    end
  end
end