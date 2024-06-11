# Following document is a file of "WhoKnows" by Krish Lalwani, whose
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

$DEBUG = false
$VERBOSE = false
require 'rake/testtask'
require 'rubocop/rake_task'

desc 'Run all tests'
task :all do
  puts 'Running unit tests'
  Rake::Task['unit'].invoke
  puts 'Running integration tests'
  Rake::Task['integration'].invoke
end

task :default => :unit

Rake::TestTask.new(:unit) do |t|
  t.description = 'Run unit tests'
  t.test_files = FileList['test/enable_coverage.rb', 'test/unit/test_*.rb']
  t.verbose = true
end

Rake::TestTask.new(:integration) do |t|
  t.description = 'Run integration tests'
  t.test_files = FileList['test/integration.rb']
end

desc 'Run bundle-audit'
task :bundle_audit do
  Rake::Task['bundle_audit:update'].invoke
  Rake::Task['bundle_audit:check'].invoke
end

desc 'Generate documentation to doc/rdocs/index.html'
task :rdoc do
  Rake::Task['rdoc:rerdoc'].invoke
end

RuboCop::RakeTask.new

############################################################
# rdoc
############################################################
namespace :rdoc do
  require 'rdoc/task'

  desc 'Generate documentation to doc/rdocs/index.html'
  Rake::RDocTask.new do |rd|
    rd.title = 'WhoKnows'
    rd.rdoc_dir = 'doc/rdocs'
    rd.main = 'README.md'
    rd.rdoc_files.include(
      'whoknows',
      'lib/**/*\.rb')
    rd.options << '--line-numbers'
    rd.options << '--all'
  end
end

############################################################
# bundle-audit
############################################################
namespace :bundle_audit do
  require 'bundler/audit/cli'

  desc 'Update bundle-audit database'
  task :update do
    Bundler::Audit::CLI.new.update
  end

  desc 'Check gems for vulns using bundle-audit'
  task :check do
    Bundler::Audit::CLI.new.check
  end
end
