require 'cucumber/rake/task'

desc "Get SQL response and store it in a file"
Cucumber::Rake::Task.new(:server, 'Execute SQL (@server only)') do |t|
    t.cucumber_opts = [ '--tags', '@server' ]
end

task :default => :server
