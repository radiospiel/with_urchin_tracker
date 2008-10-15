require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
load File.dirname(__FILE__) + '/test/config/test.rake'

desc 'Generate documentation for the orad plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Orad'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

