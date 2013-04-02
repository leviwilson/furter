require 'spec_helper'

describe Furter::Accessors::Label do

  context 'locating labels' do
    it 'can be found by accessibility label' do
      label_control = Furter::Accessors::Label.new(:label => 'someAccessibilityLabel')
      label_control.send(:selector).should eq("label marked:'someAccessibilityLabel'")
    end
  end
end

