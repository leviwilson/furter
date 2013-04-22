require 'spec_helper'

describe Furter::Accessors::Views do

  before(:each) do
    @views = Furter::Accessors::Views.new
  end

  context 'screen with one element' do

    before(:each) do
      @views.should_receive(:frankly_map).with("view:'UIView'", 'nextResponder').and_return(['<First>'])
    end

    it 'can report screen element was found' do
      @views.has?('First').should be_true
    end

    it 'can report screen element was not found' do
      @views.has?('Second').should be_false
    end
  end

  context 'screen with two elements' do
    before(:each) do
      @views.should_receive(:frankly_map).with("view:'UIView'", 'nextResponder').and_return(['<First>', '<Second>'])
    end

    it 'can find the first element' do
      @views.has? 'First'
    end

    it 'can find the last element' do
      @views.has? 'Second'
    end

    it 'can find both elements' do
      @views.has? 'First' 'Second'
    end
  end

  context 'screen with many elements' do
    before(:each) do
      @views.should_receive(:frankly_map).with("view:'UIView'", 'nextResponder').and_return(['<First>', '<Second>', '<Third>'])
    end

    it'can find the middle element' do
      @views.has? 'Second'
    end

    it 'can find all the elements' do
      @views.has? 'Third' 'First' 'Second'
    end
  end
end





    #before(:each) do
    #  screen = Furter::Accessors::Screen('First')
    #  screen.should_receive(:frankly_map).with("view:'UIView'", 'nextResponder').and_return(['First', 'Second', 'Third'])
    #end
    #
    #it 'can find one view controller' do
    #  screen.screen_has?('Third').should be_true
    #end
    #
    #it 'can find some view controllers' do
    #  screen.screen_has?('Third', 'First').should be_true
    #end
    #
    #it 'can find all view controllers' do
    #  screen.screen_has?('Third', 'Second' 'First').should be_true
    #end
    #
    #it 'can send indicator if view controller not found' do
    #  screen.screen_has?('Fourth'). should be_false
    #end


