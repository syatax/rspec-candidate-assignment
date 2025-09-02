# frozen_string_literal: true

require 'spec_helper'

#
# E2E Test Implementation - Documentation Homepage
# 
# Implement ONE comprehensive test that verifies the core functionality
# of the Playwright documentation homepage (https://playwright.dev).
# 
# Focus on demonstrating your testing strategy, technical approach,
# and understanding of SitePrism Page Object Model patterns.
#

RSpec.describe 'Documentation Homepage Test', type: :feature do
  let(:demo_page) { DemoPage.new }

  it 'Comprehensive homepage functionality verification' do
    #
    # TASK: Implement a comprehensive test for the Playwright homepage using SitePrism
    # 
    # Your test should verify:
    # 1. Page loads correctly with expected content
    # 2. Primary user action works (Get Started button)
    # 3. Navigation to documentation functions properly
    # 4. Navigate to Best Practices page with anchor link
    # 5. Verify specific code examples are present in documentation
    # 
    # EVALUATION FOCUS:
    # - How do you structure your test logic?
    # - What SitePrism methods do you choose and why?
    # - How do you handle waiting and timing with SitePrism?
    # - How do you validate complex page content?
    # - What assertions do you consider most important?
    # - Do you understand SitePrism element vs elements vs has_* methods?
    # 
    # Use the DemoPage page object and its SitePrism methods.
    # Write this as if it were going into production.
    #
    
    # TODO: Implement comprehensive E2E test using SitePrism
    # 
    # Requirements:
    # 1. Use demo_page.load to navigate to https://playwright.dev
    # 2. Use SitePrism element presence methods (has_*?)
    # 3. Use SitePrism wait methods (wait_until_*_visible)  
    # 4. Navigate to https://playwright.dev/docs/best-practices#use-locators
    # 5. Verify the code example exists: page.getByRole('button', { name: 'submit' });
    # 6. Implement proper waiting and error handling with SitePrism
    
  end
end