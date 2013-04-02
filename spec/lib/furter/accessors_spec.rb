require 'spec_helper'

class SomePage
  include Furter

  text(:text_field, :placeholder => 'text')
  label(:label_field, :label => 'id')
  view(:generic_view, :label => 'id')
  button(:button_field, :label => 'id')
  switch(:switch_field, :label => 'id')
end

describe Furter::Accessors do
  let(:screen) { SomePage.new }

  context 'text' do
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

  context 'label' do
    let(:label) { double('Label control') }

    before(:each) do
      Furter::Accessors::Label.should_receive(:new).with(:label => 'id').and_return(label)
    end

    it 'knows its value' do
      label.should_receive(:text).and_return('expected text')
      screen.label_field.should eq('expected text')
    end

  end

  context 'view' do
    let(:view) { double('View accessor') }

    before(:each) do
      Furter::Accessors::View.should_receive(:new).with(:label => 'id').and_return(view)
    end

    it 'can be clicked' do
      view.should_receive(:click)
      screen.generic_view
    end

    it 'can return the raw view' do
      screen.generic_view_view.should be(view)
    end
  end

  context 'button' do
    let(:button) { double('Button accessor') }

    before(:each) do
      Furter::Accessors::Button.should_receive(:new).with(:label => 'id').and_return(button)
    end

    it 'can be clicked' do
      button.should_receive(:click)
      screen.button_field
    end

    it 'can return the raw view' do
      screen.button_field_view.should be(button)
    end
  end

  context 'switch' do
    let(:switch) { double('Switch accessor') }

    before(:each) do
      Furter::Accessors::Switch.should_receive(:new).with(:label => 'id').and_return(switch)
    end

    it 'is aware of its state' do
      switch.should_receive(:on?).and_return(true)
      screen.switch_field.should be_true
    end

    it 'can be turned on or off' do
      switch.should_receive(:set).with(false)
      screen.switch_field = false
    end

    it 'can return the raw view' do
      screen.switch_field_view.should be(switch)
    end
  end
end
