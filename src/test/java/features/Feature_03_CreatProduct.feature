@CreatProduct
Feature: CreatProduct
    As an automation tester
  I want to creat product and edit all filed produc 
  So that I want to verify all fields is correct message

  Background: User creat product
    Given At Home Page click label "Kênh bán hàng" And Click label: "Đăng sản phẩm mới"

  @TC_008VerifyCurrentUrl
  Scenario: Verify Current Url
    Then Verify current url is "https://www.beecow.com/page/upload-product"
