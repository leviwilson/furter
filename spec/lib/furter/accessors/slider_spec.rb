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
    it "can move the slider value" do
      slider.should_receive(:frankly_map).with(selector,"setValue:animated:", 0.20, "YES")
      slider.move 0.20
    end
    it "can get progress value of slider" do
      slider.should_receive(:frankly_map).with(selector, 'value').and_return([0.20])
      slider.progress.should eq(0.20)
    end
  end
end