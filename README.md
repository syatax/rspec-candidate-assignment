# QA Automation Engineer Assessment

## Overview

**Focus:** Problem-solving approach and technical thinking  

This assessment evaluates your debugging skills, testing approach, and technical decision-making using **RSpec** with **SitePrism**, **Capybara**, **Selenium WebDriver**, and **Chrome Headless**.

## Assessment Tasks

### Task 1: Debug and Fix
**File:** `spec/broken/intentional_errors_spec.rb`

A test suite with multiple issues preventing execution. Your goal is to identify and resolve all problems.

- **Focus:** Demonstrate systematic debugging approach and Ruby/RSpec/SitePrism/Capybara knowledge.

### Task 2: Implement Core Test
**File:** `spec/e2e/documentation_test_spec.rb`

Implement **one comprehensive test** that verifies the Playwright documentation homepage functionality.

- **Focus:** Show your testing strategy, selector choices, and assertion design.

### Task 3: API Testing Strategy
**File:** `spec/api/posts_api_test_spec.rb`

Implement **one comprehensive API test** for the JSONPlaceholder posts endpoint.

- **Focus:** Demonstrate REST API testing knowledge and validation approach.

## Framework Components

- `DemoPage` - SitePrism page object for playwright.dev with element declarations
- `BasePage` - SitePrism base class with common functionality  
- `ApiHelpers` - API testing utilities using HTTParty
- Chrome Headless configuration for fast, reliable tests

## Commands

```bash
bundle install                      # Install dependencies
bundle exec rspec                   # Run all tests
bundle exec rspec spec/broken/      # Run Task 1
bundle exec rspec spec/e2e/         # Run Task 2
bundle exec rspec spec/api/         # Run Task 3
```

## Ruby Testing Stack

- **RSpec** - Testing framework with behavior-driven development syntax
- **SitePrism** - Page Object Model framework for Ruby with element declarations
- **Capybara** - Web application testing framework with intuitive API  
- **Selenium WebDriver** - Browser automation for cross-browser testing
- **Chrome Headless** - Fast, reliable test execution without GUI
- **HTTParty** - Simple HTTP client for API testing

## Evaluation Focus

We care more about **HOW you think** than how much you code:

- **Problem-solving approach** - How do you debug issues?
- **Testing strategy** - What do you choose to test and why?
- **Technical decisions** - How do you select selectors and assertions?
- **SitePrism knowledge** - Do you understand Page Object Model patterns and SitePrism methods?
- **Ruby idioms** - Do you write idiomatic Ruby code?
- **Communication** - Can you explain your reasoning?

**Remember:** Quality over quantity. We prefer one well-thought-out test over multiple rushed implementations.
