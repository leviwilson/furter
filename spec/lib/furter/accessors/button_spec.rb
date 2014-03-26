require 'spec_helper'

describe Furter::Accessors::Button do
  let(:button) { Furter::Accessors::Button.new(:text => 'Some Text') }
  let(:selector) { button.send(:selector) }

  context 'locating buttons' do
    it 'can be found by text' do
      text_button = Furter::Accessors::Button.new(:text => 'Some Text')
      text_button.send(:selector).should eq("button label text:\"Some Text\"")
    end

    it ':text is the same as :label' do
      label_button = Furter::Accessors::Button.new(:label => 'Some Text')
      label_button.send(:selector).should eq("button marked:\"Some Text\"")
    end

    it 'can be a custom button type as well' do
      custom_button = Furter::Accessors::Button.new(:label => 'Some Label', :type => 'MyButtonType')
      custom_button.send(:selector).should eq("view:\"MyButtonType\" marked:\"Some Label\"")
    end
  end
end
