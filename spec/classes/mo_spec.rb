spec_root = File.join(File.dirname(__FILE__), '..')
require "#{spec_root}/spec_helper"

describe Mo do
  before :all do
    Mo::DISK_PATH = "#{spec_root}/support/mos"
    @mo = Mo.all.first
  end
  
  describe "class" do
    describe "#all" do
      it "should respond to all" do
        Mo.should respond_to(:all)
      end
      
      it "should order all by the file date" do
        Mo.all.first.href.should == "/mos/Photo 34.jpg"
      end
      
      it "should return an array" do
        Mo.all.should be_an_instance_of(Array)
      end
      
      it "should return an array of mos" do
        Mo.all.first.should be_an_instance_of(Mo)
      end
    end
  end
  
  describe "instances" do
    it "should respond to :href" do
      @mo.should respond_to(:href)
    end
    
    it "should have a absolute href" do
      @mo.href.should =~ /^\//
    end
    
    it "should respond to created_at" do
      @mo.should respond_to(:created_at)
    end
    
    it "should respond to updated_at" do
      @mo.should respond_to(:updated_at)
    end
    
    it "should return created-at and modified-at as Time" do
      @mo.created_at.should be_an_instance_of(Time)
      @mo.updated_at.should be_an_instance_of(Time)
    end
  end
end