# frozen_string_literal: true

# Base Page Object Model class using SitePrism
# Contains common functionality shared across all page objects
class BasePage < SitePrism::Page
  # Common elements that appear on most pages
  element :page_heading, 'h1, .hero__title'
  element :loading_spinner, '.loading, .spinner'
  
  # Navigate to a specific URL
  def goto(url)
    # add method here
  end

  # Get page title
  def get_title
    page.title
  end

  # Wait for page to load completely
  def wait_for_page_load
    sleep 1
    wait_until_loading_spinner_invisible(wait: 2) if has_loading_spinner?
  end
end