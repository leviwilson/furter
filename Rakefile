require 'bundler/gem_tasks'
require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

Cucumber::Rake::Task.new(:wip) do |t|
  t.profile = 'wip'
end

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :test => [:spec, :features]
