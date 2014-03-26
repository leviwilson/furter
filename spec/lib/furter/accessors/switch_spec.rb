require 'spec_helper'

describe Furter::Accessors::Switch do
  let(:switch) { Furter::Accessors::Switch.new(:label => 'accessibilityLabel') }

  context 'locating switches' do
    it 'can be found by label' do
      switch.send(:selector).should eq("view:\"UISwitch\" marked:\"accessibilityLabel\"")
    end
  end

  it 'knows if it is on' do
    switch.should_receive(:frankly_map).with(anything, 'isOn').and_return([false])
    switch.should_not be_on
  end

  it 'can turn it off or on' do
    switch.should_receive(:on?).and_return(true, false)
    switch.should_receive(:click).twice
    [false, true].each { |on_or_off| switch.set on_or_off }
  end

  it 'will only toggle if in the expected state' do
    switch.should_receive(:frankly_map).with(anything, 'isOn').and_return([false])
    switch.should_not_receive(:click)
    switch.set false
  end
end
