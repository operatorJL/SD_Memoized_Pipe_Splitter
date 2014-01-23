$:.unshift(File.join(File.dirname(__FILE__), 'src')) 

task :run_pipe_tests do
  ruby "test/pipe_revenue_tests.rb"
end

task :run_memoize_pipe_tests do
  ruby "test/memoize_pipe_tests.rb"
end

task :run_timing_tests do
  ruby "test/timing_tests.rb"
end

task :default => :run_pipe_tests
task :run_pipe_tests => :run_memoize_pipe_tests
task :run_memoize_pipe_tests => :run_timing_tests
