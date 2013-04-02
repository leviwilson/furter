require 'spec_helper'

describe Furter::Accessors::Label do
  let(:label) { Furter::Accessors::Label.new(:label => 'someLabel')}
  let(:selector) { label.send(:selector) }

  context 'locating labels' do
    it 'can be found by accessibility label' do
      label_control = Furter::Accessors::Label.new(:label => 'someAccessibilityLabel')
      label_control.send(:selector).should eq("label marked:'someAccessibilityLabel'")
    end
  end

  it 'knows the text value' do
    label.should_receive(:frankly_map).with(selector, 'text').and_return(['expected text'])
    label.text.should eq('expected text')
  end
end

