task :hudson do
  require 'jettywrapper'
  jetty_params = {
    :jetty_home => File.expand_path(File.dirname(__FILE__) + '/../../jetty'),
    :quiet => false,
    :jetty_port => 8983,
    :solr_home => File.expand_path(File.dirname(__FILE__) + '/../../jetty/solr'),
    :fedora_home => File.expand_path(File.dirname(__FILE__) + '/../../jetty/fedora/default'),
    :startup_wait => 20
    }
    
  # does this make jetty run in TEST environment???
  error = Jettywrapper.wrap(jetty_params) do
    # system("rake hydra:fixtures:refresh environment=test")
    # Rake::Task["hyhead:rspec:run"].invoke
    # Rake::Task["hyhead:cucumber:run"].invoke
    Rake::Task["spec"].invoke
  end
  raise "test failures: #{error}" if error
end