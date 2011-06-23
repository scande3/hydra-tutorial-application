require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe JournalArticle do
  
  before(:each) do
    # This prevents your tests from hitting Fedora unnecessarily.
    Fedora::Repository.stubs(:instance).returns(stub_everything())
    # This gives you a test article object that can be used in any of the tests
    @article = JournalArticle.new
  end
  
  it "should have the specified datastreams" do
    @article.datastreams.keys.should include("descMetadata")
    @article.datastreams["descMetadata"].class.should == JournalArticleModsDatastream
    @article.datastreams.keys.should include("rightsMetadata")
    @article.datastreams["rightsMetadata"].class.should == Hydra::RightsMetadata
  end
  
  it "should have the methods from Hydra::ModelMethods" do
    JournalArticle.included_modules.should include(Hydra::ModelMethods)
    @article.should respond_to(:apply_depositor_metadata)
    @article.should respond_to(:destroyable_child_assets)
  end
end