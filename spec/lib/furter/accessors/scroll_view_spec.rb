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
    it ' can scroll by x and y pixels' do
      scroll_view.should_receive(:scroll_view_to_position).with("view:'UIScrollView' marked:'scrollView'", "1","1")
      scroll_view.scroll(1,1)
    end
  end





end