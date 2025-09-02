# frozen_string_literal: true

require 'rspec/core/rake_task'

# Default task
task default: :spec

# RSpec task
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '--color --format documentation'
end

# Task-specific test runs
namespace :spec do
  desc 'Run broken tests (Task 1)'
  RSpec::Core::RakeTask.new(:broken) do |t|
    t.pattern = 'spec/broken/**/*_spec.rb'
    t.rspec_opts = '--color --format documentation'
  end

  desc 'Run E2E tests (Task 2)'
  RSpec::Core::RakeTask.new(:e2e) do |t|
    t.pattern = 'spec/e2e/**/*_spec.rb'
    t.rspec_opts = '--color --format documentation'
  end

  desc 'Run API tests (Task 3)'
  RSpec::Core::RakeTask.new(:api) do |t|
    t.pattern = 'spec/api/**/*_spec.rb'
    t.rspec_opts = '--color --format documentation'
  end

  desc 'Run tests with detailed output'
  RSpec::Core::RakeTask.new(:verbose) do |t|
    t.rspec_opts = '--color --format documentation --backtrace'
  end
end
