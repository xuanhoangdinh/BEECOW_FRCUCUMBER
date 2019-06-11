@CreatProduct
Feature: CreatProduct
    As an automation tester
  I want to creat product and edit all filed produc 
  So that I want to verify all fields is correct message

  Background: User creat product
    Given Navigate to Upload Product Page
    And close popup advertisement

  @TC_008VerifyCurrentUrl
  Scenario: Verify Current Url
    Then Verify current url "https://www.beecow.com/page/upload-product"

  @TC_009VerifyAllFieldsEmty
  Scenario Outline: Make emty all fields at Create Product screen
    When I do not enter all field and I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>" 

    Examples: 
      | Upload image | Product name | Combobox category | Decription | Quantity | Price | Weight | Width | Length | Height | Message1                       | Message2              | Message3           | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      |              |              |                   |            |          |       |        |       |        |        | Hãy chọn hình ảnh cho sản phẩm | Hãy điền tên sản phẩm | Hãy chọn danh mục. | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |
