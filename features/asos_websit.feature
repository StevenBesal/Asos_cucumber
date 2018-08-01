Feature: User login
  as a User
  I want to be able to sign in to my account
  So that i can login to the BBC sit
  so that i can view different items
  and add these items to my bag
  proceed to purchase these items
  add a discount code which may or may not work

  @login
  Scenario: Log into my account
    Given I am on the Asos homepage
    And I move to sign in page
    When I entre my username
    And I entre my valid password and click login
    Then I should be loggged into my account

  @logout
  Scenario: Once Logged in I should be able to log out of my accout
    Given I am signed in on the homepage
    And Click the logout hidden on the page
    Then I should be logged out of my account

  @signup_error
  Scenario Outline: Error messages logging in with an invalid password
    Given I am on the Asos homepage
    And I move to signup page
    When I entre a username
    And I entre an invalid password and click login <password>
    Then I should receive a message <error>

  Examples:
    | password |                errors                    |
    |          |       Hey, we need a password here       |
    | 123456   | At least 6 letters and 1 number, please! |
    | 1234     | At least 6 letters and 1 number, please! |
    | abcd     | At least 6 letters and 1 number, please! |
    | 12ab     | At least 6 letters and 1 number, please! |

  @browsing
  Scenario: Should be able to navigate around the site
    Given I am on the Asos homepage
    When I move to new in and all stock
    And I change a few of the filters
    And click the any of the the on sceen items
    Then I should end up on a product page

  @adding_to_bag
  Scenario: I should be able to add multiple items to my bag
    Given My my bag is empty
    And I navigate to a product page
    When provided the item is in stock I can add to bag
    And add another Item
    And add another Item
    Then my bag should contain items

  @checkout
  Scenario: Should be able to proceed to checkout with items
    Given I have items in my bag
    When I proceed to checkout
    Then I should be transfered to the checkout screen

  @student_discount_error
  Scenario: Once at the checkout page I should receive errors or incorrect SD
    Given I am on the checkout page
    When I entre an invalid student discount code
    Then I should receive an invalid code message

  @valid_student_code
  Scenario:
    Given I am on the checkout page
    When I entre a valid student code
    Then I should receive an validation message
