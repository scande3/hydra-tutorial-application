#
#   Continuous Integration (Hudson/Jenkins)
#
task :ci do
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
    Rake::Task["hydra_tutorial:test:all"].invoke
  end
  raise "test failures: #{error}" if error
end

namespace :hydra_tutorial do
  
  #
  #   All Tests
  #
  namespace :test do
    desc "Runs hydra_tutorial rspec tests and cucumber features."
    task :all do
      Rake::Task["spec"].invoke
      Rake::Task["hydra_tutorial:cucumber:run"].invoke
    end
  end
  
  
  #
  #   Cucumber
  #
  namespace :cucumber do
    desc "Runs hydra_tutorial cucumber features - need to have jetty running."
    task :run do
      # Using cucumber command line script instead of rake task because of Bug HYDRA-526
      puts %x[cucumber --color --tags ~@pending --tags ~@overwritten features]
    end
  end
end