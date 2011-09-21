require 'spec_helper'

describe JournalArticleModsDatastream do
  before(:each) do
    @mods = fixture("article_mods_sample.xml")
  end
  it "should expose bibliographic info for journal articles" do
    @mods.author.first_name.should == ["George","Abraham"]
    @mods.author.last_name.should == ["Washington", "Lincoln"]
    @mods.author.role.text.should == ["Creator", "Contributor"]
    
    @mods.author(1).first_name.should == "George"
    @mods.author(1).last_name.should == "Washington"
    @mods.author(1).role.text.should == "Creator"
    
    @mods.title_info.main_title.should == ["SAMPLE ARTICLE TITLE"]
    @mods.title.should == ["SAMPLE ARTICLE TITLE"]
    
    @mods.journal.issue.pages.start.should == ["195"]
    @mods.start_page.should == ["195"]
    @mods.end_page.should == ["230"]
    @mods.publication_date.should == ["FEB. 2007"]
  end
end
