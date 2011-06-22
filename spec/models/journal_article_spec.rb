require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe JournalArticle do
  
  it "should have the specified datastreams" do
    article = JournalArticle.new
    article.datastreams.keys.should include("descMetadata")
    article.datastreams["descMetadata"].class.should == JournalArticleModsDatastream
    article.datastreams.keys.should include("rightsMetadata")
    article.datastreams["rightsMetadata"].class.should == Hydra::RightsMetadata
  end
  
end