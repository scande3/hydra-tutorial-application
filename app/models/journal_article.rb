class JournalArticle < ActiveFedora::Base
  has_metadata :name => "descMetadata", :type=> JournalArticleModsDatastream
  has_metadata :name => "rightsMetadata", :type => Hydra::RightsMetadata
end