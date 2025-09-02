# frozen_string_literal: true

require 'capybara/rspec'
require 'site_prism'
require 'selenium-webdriver'
require 'httparty'
require 'json'

# Capybara configuration
Capybara.configure do |config|
  config.default_driver = :selenium_chrome_headless
  config.javascript_driver = :selenium_chrome_headless
  config.default_max_wait_time = 10
  config.app_host = 'https://playwright.dev'
end

# Chrome headless configuration
Capybara.register_driver :selenium_chrome_headless do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--disable-gpu')
  options.add_argument('--window-size=1920,1080')

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end

# RSpec configuration
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.filter_run_when_matching :focus
  config.example_status_persistence_file_path = 'spec/examples.txt'
  config.disable_monkey_patching!
  config.warnings = true

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed

  # Clean up after each test
  config.after(:each, type: :feature) do
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end

# Load page objects and helpers
Dir[File.join(__dir__, 'support', '**', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'page_objects', '**', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'utils', '**', '*.rb')].each { |file| require file }
