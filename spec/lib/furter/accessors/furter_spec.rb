require 'spec_helper'

describe Furter do
  #let(:button) { Furter::Accessors::Button.new(:text => 'Some Text') }
  #let(:selector) { button.send(:selector) }

  context 'locating buttons' do
    it 'can be found by text' do
      text_button = Furter::Accessors::Button.new(:text => 'Some Text')
      text_button.send(:selector).should eq("button label text:'Some Text'")
    end

end