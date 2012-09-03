require 'spec_helper'

module Denglu
  describe Media do
    before(:each) do
      @media = Media.new
    end
    
    context "info" do
      it "should works" do
        info = @media.info
        info.should be_instance_of(Array)
        info.each do |item|
          item.should be_instance_of(Hash)
        end
      end
    end
  end
end