# frozen_string_literal: true

require 'spec_helper'

#
# Test Suite - Debug and Fix Issues
# 
# This file contains several common testing errors.
# Your task is to identify and fix all issues to make the tests pass.
#

RSpec.describe 'Playwright Documentation Tests', type: :feature do
  before(:each) do
    @demo_page = DemoPage.new
  end

  it 'Homepage verification' do
    @demo_page.goto('https://playwright.dev')
    
    click_button '#non-existent-button'
    
    fill_in 'Get started', with: 'some text'
    
    title = @demo_page.title
    
    expect(title).to eq 'Fast and reliable end-to-end testing for modern web apps | Playwright'
    
    @demo_page.wait_for_get_started_button(wait: 5
    
    welcome_text = @demo_page.main_heading.inner_html
    expect(welcome_text).to include('Playwright')
  end

  it 'Navigation verification' do
    @demo_page.navigate_to_demo
    
    expect(@demo_page.get_title).to eq('Wrong Title')
    
    expect(@demo_page.get_started_button_visible).to be true
  end

  context 'API integration' do
    it 'creates a new post' do
      response = ApiHelpers.get_request('/posts') do |req|
        req.body = { title: 'New Post', body: 'Content', userId: 1 }.to_json
      end

      expect(response.code).to eq(201)
      
      response_body = response.parse_json
      
      expect(response_body['title']).to eq('New Post')
      
      headers = response.header
      expect(headers['content-type']).to include('application/json')
    end
  end
end

RSpec.describe 'Standalone test', type: :feature do
  it 'checks homepage element visibility' do
    visit base_url
    
    element = main_heading
    
    expect(element.visible).to be(true)
  end
end