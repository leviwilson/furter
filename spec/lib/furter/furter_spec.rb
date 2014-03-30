require 'spec_helper'

describe Furter do

  let(:shot_taker) {Furter::ShotTaker}

  context 'taking a screenshot' do
    it 'can define a default screenshot directory' do
      shot_taker.should_receive(:screenshot).with('the_title','screenshots')
      Furter.screenshot('the_title')
    end

    it 'can define an explicit path for the screenshot' do
      shot_taker.should_receive(:frankly_screenshot).with('./path/the_title.jpg', nil, true)
      Furter.screenshot('the_title', 'path')
    end
  end
end


