# QA Automation Assessment - Interviewer Guide

## Overview

**Duration:** 90 minutes maximum  
**Focus:** Candidate thinking process and problem-solving approach  
**Level:** Mid to Senior QA Automation Engineers

This assessment prioritizes **understanding how candidates think** over code volume using Ruby, RSpec, SitePrism, Capybara, and Selenium WebDriver.

---

## Assessment Structure

- **Setup:** 5 minutes
- **Task 1:** Debug & Fix (30 minutes) - 40% weight
- **Task 2:** E2E Implementation (30 minutes) - 30% weight  
- **Task 3:** API Implementation (30 minutes) - 30% weight
- **Discussion:** 15 minutes

**Note:** Candidates must also implement missing SitePrism page object methods and element declarations throughout the framework, revealing their Ruby/SitePrism/Capybara knowledge and selector strategy.

---

## Task 1: Debug and Fix (30 minutes)

### **File:** `spec/broken/intentional_errors_spec.rb`

**Objective:** Identify and resolve all issues preventing test execution.

### **Interviewer Guidance for Nervous Candidates:**

**If candidate seems stuck (5-10 minutes in):**
- "Start by running the test to see what error messages you get"
- "Focus on one error at a time - what's the first thing preventing execution?"
- "Ruby error messages are usually quite helpful - what is it telling you?"

**If candidate is overwhelmed:**
- "Don't worry about understanding everything at once"
- "Start with obvious syntax errors - missing keywords, brackets, etc."
- "Each fix will reveal the next issue to work on"

**If candidate asks about specific errors:**
- "What do you think this error message is telling you?"
- "Have you seen similar patterns in your Ruby/RSpec work?"
- "Try the fix and see what happens next"

**If candidate asks about missing implementations:**
- "You'll need to implement the missing SitePrism page object methods as you go"
- "Think about what SitePrism element and has_* methods would be appropriate here"
- "Use the browser dev tools to find good selectors for SitePrism element declarations"
- "Remember SitePrism provides automatic presence checking with has_* methods"

### **Expected Issues to Fix:**
1. Missing SitePrism element declarations and methods
2. Incorrect SitePrism presence checking (has_* vs element access)
3. Wrong SitePrism wait methods (wait_until_*_visible)
4. Incorrect RSpec syntax and matchers
5. Wrong HTTP method usage in API calls
6. Missing variables/constants
7. Ruby syntax errors (blocks, method calls)

### **Success Indicators:**
- **Excellent:** Systematic approach, fixes all issues efficiently, understands SitePrism patterns and Ruby idioms
- **Good:** Methodical debugging, resolves most issues, decent SitePrism/Ruby knowledge
- **Concerning:** Random trial-and-error, struggles with basic SitePrism/RSpec concepts

---

## Task 2: E2E Implementation (30 minutes) - SENIOR LEVEL

### **File:** `spec/e2e/documentation_test_spec.rb`

**SENIOR-LEVEL CHALLENGES:**
- Navigate to specific anchor sections (`#use-locators`)
- Handle multiple matching elements (Capybara's ambiguous matches)
- Validate complex documentation content
- Demonstrate advanced Capybara locator strategies

**Objective:** Implement ONE comprehensive E2E test for playwright.dev homepage.

### **Interviewer Guidance for Nervous Candidates:**

**If candidate doesn't know where to start:**
- "Begin by manually visiting https://playwright.dev - what would a user typically do?"
- "What are the most important things to verify on this page?"
- "Start simple - can you verify the page loads and has the right title?"

**If candidate struggles with selectors:**
- "Use the browser dev tools to inspect elements"
- "SitePrism element declarations use CSS selectors - text content selectors work well"
- "Start with simple selectors in your element declarations and refine if needed"
- "Remember SitePrism automatically creates has_* and wait_until_* methods"

**If candidate asks about test scope:**
- "Focus on the critical user journey - homepage to getting started"
- "Quality over quantity - one solid test is better than multiple incomplete ones"
- "Think about what would break the user experience if it failed"

### **What We're Looking For:**
- **Test Structure:** Logical flow and RSpec organization
- **SitePrism Usage:** Proper element declarations and page object patterns
- **Selector Strategy:** Thoughtful SitePrism element targeting  
- **Assertion Quality:** Meaningful RSpec expectations using SitePrism methods
- **Error Handling:** Consideration of timing and SitePrism waiting strategies
- **Ruby Style:** Idiomatic Ruby and RSpec patterns

### **Discussion Points:**
- "Walk me through your testing strategy"
- "Why did you choose those specific SitePrism element declarations and methods?"
- "How would you make this test more robust?"
- "What would you test next if you had more time?"

---

## Task 3: API Implementation (30 minutes)

### **File:** `spec/api/posts_api_test_spec.rb`

**Objective:** Implement ONE comprehensive API test for JSONPlaceholder posts using HTTParty.

### **Interviewer Guidance for Nervous Candidates:**

**If candidate doesn't know where to start:**
- "Think about what you'd test if this were a real API in production"
- "Start with a simple GET request - can you retrieve a post?"
- "HTTParty makes this pretty straightforward in Ruby"

**If candidate struggles with API concepts:**
- "What HTTP status codes would you expect for different operations?"
- "How would you verify the response data is correct?"
- "Ruby has great JSON parsing - how would you validate response structure?"

**If candidate asks about test scope:**
- "Focus on the core CRUD operations - GET, POST, and error handling"
- "Show me your validation strategy rather than testing every endpoint"
- "Think about what's most important for API reliability"

### **What We're Looking For:**
- **HTTP Understanding:** Correct method usage and status codes
- **Validation Strategy:** Comprehensive response checking with RSpec matchers
- **Error Handling:** Consideration of failure scenarios
- **Ruby/HTTParty Usage:** Clean, idiomatic Ruby API client code

### **Discussion Points:**
- "How do you approach API testing differently from UI testing?"
- "What validation is most critical for this type of API?"
- "How would you handle authentication in a real API?"
- "What performance considerations would you add?"

---

## General Interview Guidance

### **Creating a Supportive Environment:**

**For Nervous Candidates:**
- "Take your time - we're more interested in your approach than speed"
- "Feel free to think out loud - we want to understand your reasoning"
- "It's okay to ask questions about requirements or clarification"
- "If you get stuck, explain what you're thinking and we can guide you"

**Encouraging Thinking Out Loud:**
- "Can you walk me through your thought process?"
- "What are you considering as you write this test?"
- "What concerns do you have about this approach?"
- "How would you handle this differently in a real project?"

### **Red Flags to Watch For:**
- Copy-pasting without understanding
- No consideration of error scenarios  
- Inability to explain their approach
- Getting frustrated with basic SitePrism/RSpec debugging
- Not understanding SitePrism element vs has_* method differences
- Not following Ruby conventions or idioms

### **Positive Indicators:**
- Systematic problem-solving approach
- Asking clarifying questions about requirements
- Explaining their SitePrism element and assertion choices
- Understanding SitePrism's automatic method generation (has_*, wait_until_*)
- Considering edge cases and error scenarios
- Writing idiomatic Ruby code
- Understanding of RSpec and SitePrism best practices

### **Time Management:**
- **15 minutes in:** Check progress, offer gentle guidance if stuck
- **45 minutes in:** Encourage wrapping up current task
- **75 minutes in:** Begin discussion even if not fully complete

### **Discussion Questions:**
1. "What was your approach to debugging the broken tests?"
2. "How did you decide what to test in your E2E scenario?"
3. "What would you add to make these tests production-ready?"
4. "How would you organize tests in a larger Ruby project?"
5. "What Ruby testing patterns do you prefer and why?"

---

## Scoring Framework

| Criteria | Weight | What We're Evaluating |
|----------|--------|-----------------------|
| **Problem Solving** | 40% | Debugging approach, systematic thinking |
| **Technical Knowledge** | 30% | Ruby/RSpec/Capybara understanding, best practices |
| **Test Design** | 20% | Strategy, assertions, edge case consideration |
| **Communication** | 10% | Explanation of approach and reasoning |

### **Overall Assessment:**
- **Strong:** Systematic approach, clear reasoning, solid technical execution, good Ruby skills
- **Good:** Methodical problem-solving, decent technical skills, understands Ruby conventions
- **Weak:** Struggles with debugging, limited testing knowledge, poor Ruby practices

---

**Remember: This assessment reveals thinking patterns and technical approach more than coding speed. Focus on understanding HOW the candidate works through problems and their Ruby expertise.**
