# frozen_string_literal: true

require_relative 'base_page'

# SitePrism Page Object for Playwright documentation site
class DemoPage < BasePage
  set_url 'https://playwright.dev'

  # Element declarations using SitePrism
  # TODO: Add element declarations here
  # element :get_started_button, 'ADD_SELECTOR_HERE'
  # element :docs_link, 'ADD_SELECTOR_HERE'
  # element :main_heading, 'ADD_SELECTOR_HERE'
  # element :search_input, 'ADD_SELECTOR_HERE'
  # element :navigation_menu, 'ADD_SELECTOR_HERE'

  # Elements collection for multiple items
  # elements :feature_cards, 'ADD_SELECTOR_HERE'
  # elements :navigation_links, 'ADD_SELECTOR_HERE'

  # Navigate to the Playwright site
  def navigate_to_demo
    # add method here
  end

  # Click Get Started button
  def click_get_started
    # add method here
  end

  # Click Docs link
  def click_docs_link
    # add method here
  end

  # Get main page heading text
  def get_main_heading
    # add method here
  end

  # Search for content
  def search_for(term)
    # add method here
  end

  # Check if Get Started button is visible
  def get_started_button_visible?
    # add method here
  end

  # Check if navigation menu is visible
  def navigation_visible?
    # add method here
  end
end