class JournalArticle < ActiveFedora::Base
  include Hydra::ModelMethods
  
  has_metadata :name => "descMetadata", :type=> JournalArticleModsDatastream
  has_metadata :name => "rightsMetadata", :type => Hydra::RightsMetadata
end