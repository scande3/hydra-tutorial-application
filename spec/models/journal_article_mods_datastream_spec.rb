require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe JournalArticleModsDatastream do
  
  it "should support the terms we want to create and update" do
    article_ds = JournalArticleModsDatastream.from_xml(fixture("journal_article_mods_sample.xml"))
    article_ds.term_values(:author, :first_name).should == ["GIVEN NAMES"]
    article_ds.term_values(:start_page).should == ["195"]
    article_ds.term_values(:journal, :issue, :pages, :start).should == ["195"]
  end
  
end