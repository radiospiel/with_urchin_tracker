desc 'Default: run unit tests.'
task :default => :test

desc 'Test the orad plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = File.dirname(__FILE__) + '/../tests/**/*_test.rb'
  t.verbose = true
end
