require 'spec_helper'


describe Furter::Accessors::Slider do
  let(:slider) { Furter::Accessors::Slider.new(:label => 'id') }
  let(:selector) { slider.send(:selector) }

  context 'locating slider' do
    it 'can be found by id' do
      id_slider = Furter::Accessors::Slider.new(:label => 'someSliderLabel')
      id_slider.send(:selector).should eq("view:'UISlider' marked:'someSliderLabel'")
    end
  end

  context 'moving slider' do

    it "can move to a position" do
      slider.should_receive(:frankly_map).with(selector,"setValue:animated:", 0.20, "YES")
      slider.move 0.20


      #view.should_receive(:element_is_not_hidden).with(selector).and_return(true)

    end

    it "can get progress of slider" do
      slider.should_receive(:frankly_map).with(selector, "value").and_return([0.20])
      slider.progress.should eq(0.20)
    end


      #slide.progress.should eq(20)
    end
  end



#
#describe Furter::Accessors::Button do
#  let(:button) { Furter::Accessors::Button.new(:text => 'Some Text') }
#  let(:selector) { button.send(:selector) }
#
#  context 'locating buttons' do
#    it 'can be found by text' do
#      text_button = Furter::Accessors::Button.new(:text => 'Some Text')
#      text_button.send(:selector).should eq("button marked:'Some Text'")
#    end
#
#    it ':text is the same as :label' do
#      label_button = Furter::Accessors::Button.new(:label => 'Some Text')
#      label_button.send(:selector).should eq("button marked:'Some Text'")
#    end
#
#    it 'can be a custom button type as well' do
#      custom_button = Furter::Accessors::Button.new(:text => 'Some Text', :type => 'MyButtonType')
#      custom_button.send(:selector).should eq("view:'MyButtonType' marked:'Some Text'")
#    end
#  end
#end