@CreatProduct
Feature: CreatProduct
    As an automation tester
  I want to creat product and edit all filed produc 
  So that I want to verify all fields is correct message

  Background: User creat product
    Given Navigate to Upload Product Page
    And close popup advertisement

  @TC_008_VerifyCurrentUrl
  Scenario: Verify Current Url
    Then Verify current url "https://www.beecow.com/page/upload-product"

  @TC_009_VerifyAllFieldsEmty
  Scenario Outline: Make emty all fields at Create Product screen
    When I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Upload image | Product name | Combobox category | Decription | Quantity | Price | Weight | Width | Length | Height | Message1                       | Message2              | Message3           | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      |              |              |                   |            |          |       |        |       |        |        | Hãy chọn hình ảnh cho sản phẩm | Hãy điền tên sản phẩm | Hãy chọn danh mục. | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_010_UploadImageSuccefully
  Scenario Outline: Upload fields Image Succefully
    When I upload fields Image Succefully
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Product name | Combobox category | Decription | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2              | Message3           | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      |              |                   |            |          |       |        |       |        |        |          | Hãy điền tên sản phẩm | Hãy chọn danh mục. | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_011_UploadImageAndInputRandomProductName
  Scenario Outline: Upload fields Image Succefully And Input Random Product Name
    When I upload fields Image Succefully
    And I input random Product Name
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Combobox category | Decription | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message3           | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      |                   |            |          |       |        |       |        |        |          |          | Hãy chọn danh mục. | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_012_UploadImageAndInputRandomProductNameRandomCombobox1
  Scenario Outline: Upload image and input random product name random combobox1
    When I upload fields Image Succefully
    And I input random Product Name
    And I Select random combobox Chọn danh mục so 1
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Combobox category | Decription | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message3           | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      |                   |            |          |       |        |       |        |        |          |          | Hãy chọn danh mục. | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_013_UploadImageAndInputRandomProductNameRandomCombobox1and2
  Scenario Outline: Upload image and input random product name random combobox1 and combobox2
    When I upload fields Image Succefully
    And I input random Product Name
    And I Select random combobox Chọn danh mục so 1
    And I Select random combobox Chọn danh mục thu 2
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Combobox category | Decription | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message3 | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      |                   |            |          |       |        |       |        |        |          |          |          | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_014_PostWithInputFieldValidToDescription
  Scenario Outline: Post with input field valid to description
    When I upload fields Image Succefully
    And I input random Product Name
    And I Select random combobox Chọn danh mục so 1
    And I Select random combobox Chọn danh mục thu 2
    And I input data "<Decription>" to decription
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Decription          | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message3 | Message4 | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      | Description product |          |       |        |       |        |        |          |          |          |          | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_015_PostWithInputValidFieldToQuantity
  Scenario Outline: Upload fields Image Succefully and Input Random Product Name and RandomCombobox
    When I upload fields Image Succefully
    And I input random Product Name
    And I Select random combobox Chọn danh mục so 1
    And I Select random combobox Chọn danh mục thu 2
    And I input data "<Decription>" to decription
    And Input Quantity: "10"
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Decription          | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message3 | Message4 | Message5 | Message6      | Message7                    | Message8 | Message9 | Message10 |
      | Description product |       10 |       |        |       |        |        |          |          |          |          |          | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |
