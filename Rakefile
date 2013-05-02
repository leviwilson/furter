require 'bundler/gem_tasks'
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

desc "Run cucumber using the default profile"
Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

desc "Run cucumber using the wip profile"
Cucumber::Rake::Task.new(:wip) do |t|
  t.profile = 'wip'
end

desc "Run the specs"
RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Build the FurterApp and run both specs and features"
task :test => [:build_app, :spec, :features]

desc "Build the FurterApp"
task :build_app do
  Dir.chdir('app/FurterApp') do |working_directory|
    `frank build`
  end
end

desc "Launch the sim_launcher"
task :sim_server do
  IO.popen 'sim_launcher'
end
