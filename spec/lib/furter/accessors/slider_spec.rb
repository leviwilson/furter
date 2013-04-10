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

    it "can move to a position by float" do
      slider.should_receive(:frankly_map).with(selector,"setValue:animated:", 0.20, "YES")
      slider.move 0.20
    end

    it "can get float progress of slider" do
      slider.should_receive(:frankly_map).with(selector, 'value').and_return([0.20])
      slider.progress.should eq(0.20)
    end

    it 'can set slider value based on time progress' do
      slider.should_receive(:frankly_map).with(selector, 'setValue:animated:', 0.50, 'YES')
      slider.max_min '10:00'
      slider.progress_min '5:00'
    end

    it 'can set slider value based on time in seconds' do
      slider.should_receive(:frankly_map).with(selector, 'setValue:animated:', 0.2, 'YES')
      slider.max_min ':25'
      slider.progress_min ':05'
    end
  end
end