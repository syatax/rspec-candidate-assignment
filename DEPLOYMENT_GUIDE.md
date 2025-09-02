# QA Automation Test Assignment - Deployment Guide

## Overview

This guide explains how to deploy and use the Ruby QA automation test assignment for interviews.

## Package Contents

### For Candidates:
- `README.md` - Complete assignment instructions
- All test files with TODO implementations
- Complete framework setup (page objects, utilities, test data)
- RSpec configuration with SitePrism, Capybara and Chrome Headless

### For Interviewers:
- `INTERVIEWER_GUIDE.md` - Complete solutions and evaluation criteria
- Expected solutions for all tasks
- Detailed scoring rubrics
- Interview questions and red flags to watch for

## Prerequisites

### System Requirements:
- Ruby 3.0+ (recommended: 3.2+)
- Chrome/Chromium browser
- Internet connectivity for API tests

### Installation:
```bash
# Check Ruby version
ruby --version

# Install bundler if not present
gem install bundler

# Install project dependencies
cd rspec-candidate-assignment
bundle install
```

## Setup for Interview

### Pre-Interview Preparation:

1. **Verify Environment:**
   ```bash
   cd rspec-candidate-assignment
   bundle install
   # Test that Chrome headless works
   bundle exec rspec spec/spec_helper.rb
   ```

2. **Prepare Candidate Workspace:**
   - Ensure Ruby 3.0+ is installed
   - Verify Chrome browser is available
   - Test internet connectivity for API tests
   - Provide access to the project folder

3. **Review Materials:**
   - Read through `INTERVIEWER_GUIDE.md`
   - Familiarize yourself with expected solutions
   - Prepare follow-up questions based on candidate level

### During Interview:

1. **Introduction (5 minutes):**
   - Explain the assignment structure
   - Show them `README.md`
   - Verify they can run a basic test: `bundle exec rspec --version`

2. **Task Execution (75 minutes):**
   - Let candidate work independently
   - Observe problem-solving approach
   - Take notes on methodology and communication
   - Intervene only if they're completely stuck

3. **Review Session (15 minutes):**
   - Ask them to walk through their solutions
   - Discuss challenges they faced
   - Ask follow-up technical questions

## Evaluation Process

### Automated Scoring:
```bash
# Run all tests to see what passes
bundle exec rspec

# Run specific task tests
bundle exec rspec spec/broken/
bundle exec rspec spec/e2e/
bundle exec rspec spec/api/

# Verbose output for debugging
bundle exec rspec --format documentation
```

### Manual Review:
- Code quality and Ruby idioms
- Use of SitePrism page object patterns
- Use of RSpec best practices
- Problem-solving approach
- Communication and explanation

## Customization Options

### Difficulty Adjustment:

**For Junior Candidates:**
- Reduce number of errors in broken test (focus on 10-15 obvious ones)
- Provide more hints in TODO comments
- Allow extra time for completion
- Focus more on basic Ruby/RSpec syntax

**For Senior Candidates:**
- Add more complex scenarios
- Include performance testing requirements
- Ask for framework improvements
- Require advanced Capybara patterns

### Domain-Specific Modifications:

**For API-Heavy Roles:**
- Add more complex API scenarios
- Include authentication testing
- Add JSON schema validation
- Test error handling and retries

**For UI-Heavy Roles:**
- Add more complex E2E scenarios
- Include accessibility testing
- Add responsive design testing
- Test file uploads and downloads

## Common Issues & Solutions

### Environment Issues:
- **Ruby version conflicts:** Use rbenv or RVM to manage Ruby versions
- **Chrome issues:** Install Chrome/Chromium, verify PATH
- **Gem installation fails:** Update bundler, check Ruby version
- **Network issues:** Provide offline API mock if needed

### Candidate Issues:
- **Overwhelmed by errors:** Guide them to start with obvious syntax errors
- **Stuck on selectors:** Suggest using browser dev tools and Capybara documentation
- **Time management:** Provide gentle time reminders
- **SitePrism confusion:** Guide to element vs has_* vs wait_until_* methods
- **Ruby syntax confusion:** Remind about basic Ruby conventions

## Interview Variations

### Remote Interview:
- Use screen sharing for observation
- Provide clear communication channels
- Allow for technical difficulties time
- Consider async submission if needed
- Test audio/video quality beforehand

### In-Person Interview:
- Prepare dedicated workstation with Ruby installed
- Have backup laptop ready
- Provide quiet environment
- Allow for questions and discussion
- Ensure stable internet connection

## Scoring Template

```
Candidate: ________________
Date: ____________________
Position: _________________

Task 1 - Broken Tests (40%):
□ Errors Fixed: ___/15
□ Ruby Code Quality: ___/10
□ RSpec Knowledge: ___/10
□ Time Management: ___/10
Score: ___/40

Task 2 - E2E Tests (30%):
□ Test Implementation: ___/15
□ Capybara Usage: ___/10
□ Selector Strategy: ___/5
Score: ___/30

Task 3 - API Tests (30%):
□ API Test Coverage: ___/15
□ HTTParty Usage: ___/10
□ Response Validation: ___/5
Score: ___/30

Overall Score: ___/100
Ruby Proficiency: ___/10
Recommendation: ___________
```

## Ruby-Specific Evaluation Criteria

### Code Quality:
- Follows Ruby style conventions
- Uses appropriate SitePrism element declarations
- Uses appropriate RSpec matchers
- Implements idiomatic Ruby patterns
- Proper use of blocks and iterators

### Testing Knowledge:
- Understands RSpec describe/context/it structure
- Uses appropriate SitePrism page object methods
- Uses SitePrism element declarations effectively
- Handles asynchronous behavior with SitePrism wait methods
- Implements proper error handling

## Post-Interview

### Feedback Collection:
- Document specific strengths and weaknesses
- Note Ruby proficiency level
- Record interesting problem-solving approaches
- Assess cultural fit for Ruby team

### Candidate Feedback:
- Provide general feedback on performance
- Highlight areas for Ruby improvement
- Suggest learning resources (RSpec docs, SitePrism guides, Capybara docs)
- Discuss Ruby testing best practices

## Maintenance

### Regular Updates:
- Update Ruby version and gems quarterly
- Verify tests still work with latest Chrome
- Update API endpoints if JSONPlaceholder changes
- Refresh documentation and examples

### Improvement Tracking:
- Collect feedback from interviewers
- Track common candidate struggles with Ruby/RSpec
- Refine difficulty based on success rates
- Update evaluation criteria as needed

---

**Note:** This Ruby-based assignment has been adapted from the Playwright TypeScript version to provide equivalent evaluation of QA automation capabilities using Ruby ecosystem tools including the professional SitePrism Page Object Model framework.
