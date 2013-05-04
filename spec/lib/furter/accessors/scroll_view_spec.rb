require 'spec_helper'

describe Furter::Accessors::ScrollView do

  let(:scroll_view) { Furter::Accessors::ScrollView.new(:label => 'scrollView') }
  let(:selector) { table.send(:selector) }

  context 'locating scrollview' do
    it 'can be found by label' do
      scroll = Furter::Accessors::ScrollView.new(:label => 'Some Label')
      scroll.send(:selector).should eq("view:'UIScrollView' marked:'Some Label'")
    end
  end

  context 'scrolling views' do
    it ' can scroll a view' do
      scroll_view.should_receive(:frankly_map).with("view:'UIScrollView' marked:'scrollView'", 'swipeInDirection:', 'left')
      scroll_view.scroll('left')
    end
  end





end