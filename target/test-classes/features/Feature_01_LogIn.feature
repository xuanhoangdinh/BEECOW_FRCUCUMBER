@LogInBeecow
Feature: Login page
    As an automation tester
  I want to login with account
  So that I want to verify all fields is correct message

  @LoginAccount
  Scenario Outline: Login incorrect account, login and verify login not successfully
    Given I navigate to Beecow and click button Login
    When I input data "<UserName>" to username
    And I input data "<PassWord>" to password
    And I click button Login
    Then Verify successfully with message "<message 1>" and "<message 2>"

    Examples: 
      | UserName | PassWord | Message1                                            | Message2                                            |
      |          |          | Please enter your email / phone number and password |                                                     |
      |     1234 |          | Phone number is incorrect                           | Please enter your email / phone number and password |
      |          |          |                                                     |                                                     |
      |          |          |                                                     |                                                     |
      |          |          |                                                     |                                                     |
      |          |          |                                                     |                                                     |
      |          |          |                                                     |                                                     |
