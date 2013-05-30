require 'spec_helper'

describe Furter do

  context 'taking a screenshot' do
    it 'can take a screen shot' do
      Furter.should_receive(:frankly_screenshot).with('./screenshots/the_title.jpg', nil, true)
      Furter.screenshot('the_title')
    end
  end
end


