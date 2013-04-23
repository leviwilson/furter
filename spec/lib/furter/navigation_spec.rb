require 'spec_helper'

class NavigationScreen; end

RSpec.configure do |c|
  c.include Furter::Navigation, :navigation => true
end

describe Furter::Navigation, :navigation => true do
  let(:screen) { double('navigation screen') }

  before(:each) do
    NavigationScreen.should_receive(:new).and_return(screen)
  end

  it 'returns the screen that was asked for' do
    on(NavigationScreen).should be(screen)
  end

  it 'cares about active? if you do' do
    screen.should_receive(:active?).and_return(true)
    on(NavigationScreen)
  end

  it 'gives you your object when it is ready' do
    screen.should_receive(:call_me)
    on(NavigationScreen) do |s|
      s.call_me
    end
  end
end
