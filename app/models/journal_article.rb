# a Fedora object for the Journal Article hydra content type
class JournalArticle < ActiveFedora::Base
  include Hydra::ModelMethods
  
  has_metadata :name => "descMetadata", :type=> JournalArticleModsDatastream
  has_metadata :name => "rightsMetadata", :type => Hydra::RightsMetadata
  
  delegate :title, :to=>"descMetadata", :unique=>"true"
  delegate :start_page, :to=>"descMetadata"
  delegate :end_page, :to=>"descMetadata"
  delegate :publication_date, :to=>"descMetadata"
  delegate :journal_title, :to=>"descMetadata"
  delegate :journal_issue_volume, :to=>"descMetadata"
  delegate :journal_issue_level, :to=>"descMetadata"
  
  accepts_nested_attributes_for :author, :located_at=>[:descMetadata, :person]
end