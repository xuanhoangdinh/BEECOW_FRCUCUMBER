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
    Then Verify successfully with Message "<Message1>" and "<Message2>"

    Examples: 
      | UserName                | PassWord | Message1                                   | Message2                                   |
      |                         |          | Hãy nhập email / số điện thoại và mật khẩu |                                            |
      |                    1234 |          | Số điện thoại không đúng                   | Hãy nhập email / số điện thoại và mật khẩu |
      | 1234abcd                |          | Email không đúng                           | Hãy nhập email / số điện thoại và mật khẩu |
      | genymotionios@gmail.com |          |                                            | Hãy nhập email / số điện thoại và mật khẩu |
      | genymotionios@gmail.com |      123 | Tối thiểu 6 ký tự                          | Hãy nhập email / số điện thoại và mật khẩu |
      | genymotionios@gmail.com |   123456 |                                            | Sai email / số điện thoại hoặc mật khẩu    |
