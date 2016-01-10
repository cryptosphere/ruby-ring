require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rubocop/rake_task"

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new

task :compile do
  Dir.chdir("ring-native") do
    system "rake compile"
  end
end

task default: %w(compile spec rubocop)
