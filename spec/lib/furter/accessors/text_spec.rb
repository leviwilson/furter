require 'spec_helper'

describe Furter::Accessors::Text do
  let(:placeholder) { Furter::Accessors::Text.new(:placeholder => 'Placeholder Text') }
  let(:label) { Furter::Accessors::Text.new(:label => 'accessibilityLabel') }

  context 'locating text fields' do
    it 'should work by placeholder' do
      placeholder.send(:selector).should eq("textField placeholder:\"Placeholder Text\"")
    end

    it 'should work by accessibility label' do
      label.send(:selector).should eq("textField marked:\"accessibilityLabel\"")
    end
  end

  it 'can get text' do
    placeholder.should_receive(:frankly_map).with(anything, 'text').and_return(['expected text'])
    placeholder.get_text.should eq('expected text')
  end

  it 'can set text' do
    placeholder.should_receive(:frankly_map).with(anything, 'becomeFirstResponder').ordered
    placeholder.should_receive(:frankly_map).with(anything, 'setText:', 'the new text').ordered
    placeholder.should_receive(:frankly_map).with(anything, 'endEditing:', true).ordered

    placeholder.set_text 'the new text'
  end

  it 'knows if text exists anywhere' do
    placeholder.should_receive(:element_exists).with("view marked:\"to find anywhere\"")
    placeholder.has_text? 'to find anywhere'
  end

  it 'knows whether we are editable or not' do
    placeholder.should_receive(:frankly_map).with(anything, 'isEnabled').and_return([true])
    placeholder.should be_enabled
  end
end
