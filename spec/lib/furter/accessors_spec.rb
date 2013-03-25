require 'spec_helper'

class SomePage
  include Furter

  text(:text_field, :placeholder => 'text')
end

describe Furter::Accessors do
  let(:screen) { SomePage.new }

  context('text') do
    let(:text) { double('Text accessor') }

    before(:each) do
      Furter::Accessors::Text.should_receive(:new).with(:placeholder => 'text').and_return(text)
    end

    it 'can be returned' do
      text.should_receive(:get_text)
      screen.text_field
    end

    it 'can be set' do
      text.should_receive(:set_text).with('new text')
      screen.text_field = 'new text'
    end

    it 'has editability' do
      text.should_receive(:editable?).and_return(false)
      screen.should_not be_text_field_editable
    end

    it 'can dish out a view' do
      screen.text_field_view.should be(text)
    end
  end
end
