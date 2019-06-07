@CreatProduct
Feature: Login page
    As an automation tester
  I want to login with account
  So that I want to verify all fields is correct message

  Background: User to navigate to Login page
    Given I navigate to Beecow "https://www.beecow.com"

  @LoginCorrectAccount
  Scenario Outline: Login correct account, login and verify login successfully
    Given I enter "<UserName>" to username
    When I enter "<PassWord>" to password
    When I click button Login
    Then Verify successfully with username "<genymotionios>"
