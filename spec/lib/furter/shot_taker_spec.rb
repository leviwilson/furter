require 'spec_helper'

describe Furter::ShotTaker do

  context 'taking a screenshot' do
      it 'should make a directory if one does not exist' do
        File.should_receive(:exists?).with('path').and_return(false)
        Dir.should_receive(:mkdir).with('path')
        Furter::ShotTaker.screenshot("title", "path")
      end
  end
  context 'directory already exists' do
    it 'should not try to make a directory if one exists' do
        File.any_instance.stub(:exists?).and_return(true)
        Dir.should_not_receive(:mkdir)
        Furter::ShotTaker.screenshot("title", "path")
      end
  end
end
