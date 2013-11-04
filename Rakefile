require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rdoc/task'

RSpec::Core::RakeTask.new(:spec)
task :default => :spec

desc 'Generate website files'
task :website do
  Dir['website/**/*.txt'].each do |txt|
    sh %{ ruby scripts/txt2html #{txt} > #{txt.gsub(/txt$/,'html')} }
  end
  sh "rspec spec --format html > website/specs.html"
end

Rake::RDocTask.new do |rd|
  rd.main = 'RDOC_README.txt'
  rd.rdoc_dir = 'rdoc'
end

desc 'Remove generated packages'
task :clobber_package do
  rm_r 'pkg'
end

desc 'Clear out RDoc and generated packages'
task :clean => [:clobber_rdoc, :clobber_package]
