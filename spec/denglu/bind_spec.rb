module Denglu
  require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
  
  describe Bind do
    before(:each) do
      @bind = Denglu::Bind.new
    end
    
    context "bind" do
      it "should works" do
        result = @bind.bind '20271188', '1', 'yangkit', 'yangzhengquan@gmail.com'
        result.should be_instance_of(Hash)
        result.should have_key('result')
      end
    end
    
    context "bind_info" do
      it "should works" do
        result = @bind.bind_info "20271188", '1'
        result.should be_instance_of(Array)
      end
    end
    
    context "unbind" do
      it "should works" do
        result = @bind.unbind '20271188'
        result.should be_instance_of(Hash)
        result.should have_key('result')
      end
      
    end
  
  end
end