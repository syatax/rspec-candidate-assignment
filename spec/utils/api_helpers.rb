# frozen_string_literal: true

require 'httparty'
require 'rspec/expectations'

# API testing utilities and helper functions
class ApiHelpers
  include HTTParty
  extend RSpec::Matchers

  # Base API URL
  BASE_URL = 'https://jsonplaceholder.typicode.com'
  base_uri BASE_URL

  # Common headers for API requests
  def self.default_headers
    {
      'Content-Type' => 'application/json',
      'Accept' => 'application/json'
    }
  end

  # Make GET request
  def self.get_request(endpoint)
    get(endpoint, headers: default_headers)
  end

  # Make POST request
  def self.post_request(endpoint, data)
    post(endpoint,
         body: data.to_json,
         headers: default_headers)
  end

  # Make PUT request
  def self.put_request(endpoint, data)
    put(endpoint,
        body: data.to_json,
        headers: default_headers)
  end

  # Make DELETE request
  def self.delete_request(endpoint)
    delete(endpoint, headers: default_headers)
  end

  # Verify response status code
  def self.verify_status_code(response, expected_status)
    # add method here
  end

  # Verify response time is within acceptable range
  def self.verify_response_time(start_time, max_time = 2000)
    # add method here
  end
end