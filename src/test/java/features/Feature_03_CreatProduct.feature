@CreatProduct
Feature: CreatProduct
    As an automation tester
  I want to creat product and edit all filed produc 
  So that I want to verify all fields is correct message

  Background: User creat product
    Given  Navigate to Upload Product Page

  @TC_008VerifyCurrentUrl
  Scenario: Verify Current Url
    Then Verify current url "https://www.beecow.com/page/upload-product"
