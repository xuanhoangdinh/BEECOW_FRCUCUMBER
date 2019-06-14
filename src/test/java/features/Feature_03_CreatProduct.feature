@CreatProduct
Feature: CreatProduct
    As an automation tester
  I want to creat product and edit all filed produc 
  So that I want to verify all fields is correct message

  Background: User creat product
    Given Navigate to Upload Product Page
    And close popup advertisement

  @TC_008_VerifyCurrentUrl
  Scenario: TC_008_Verify Current Url
    Then Verify current url "https://www.beecow.com/page/upload-product"

  @TC_009_VerifyAllFieldsEmty
  Scenario Outline: TC_009_Make emty all fields at Create Product screen
    When I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Message1                       | Message2              | Message3           | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      | Hãy chọn hình ảnh cho sản phẩm | Hãy điền tên sản phẩm | Hãy chọn danh mục. | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_010_UploadImageSuccefully
  Scenario Outline: TC_010_Upload fields Image Succefully
    When I Input "<Upload image>" and "<Product name>" and "<Decription>" and "<Quantity>" and "<Price>" and "<Weight>" and "<Width>" and "<Length>" and "<Height>"
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Upload image | Product name | Decription | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2              | Message3           | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      | 2019259.jpg  |              |            |          |       |        |       |        |        |          | Hãy điền tên sản phẩm | Hãy chọn danh mục. | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_011_UploadImageAndInputRandomProductName
  Scenario Outline: TC_011_Upload fields Image Succefully And Input Random Product Name
    When I Input "<Upload image>" and "<Product name>" and "<Decription>" and "<Quantity>" and "<Price>" and "<Weight>" and "<Width>" and "<Length>" and "<Height>"
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Upload image | Product name | Decription | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message3           | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      | 2019259.jpg  | XuanHoang    |            |          |       |        |       |        |        |          |          | Hãy chọn danh mục. | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_012_UploadImageAndInputRandomProductNameRandomCombobox1
  Scenario Outline: TC_012_Upload image and input random product name random combobox1
    When I Input "<Upload image>" and "<Product name>" and "<Decription>" and "<Quantity>" and "<Price>" and "<Weight>" and "<Width>" and "<Length>" and "<Height>"
    And I Select random combobox Chọn danh mục so 1
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Upload image | Product name | Decription | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message3           | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      | 2019259.jpg  | XuanHoang    |            |          |       |        |       |        |        |          |          | Hãy chọn danh mục. | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_013_UploadImageAndInputRandomProductNameRandomCombobox1and2
  Scenario Outline: TC_013_Upload image and input random product name random combobox1 and combobox2
    When I Input "<Upload image>" and "<Product name>" and "<Decription>" and "<Quantity>" and "<Price>" and "<Weight>" and "<Width>" and "<Length>" and "<Height>"
    And I Select random combobox Chọn danh mục so 1
    And I Select random combobox Chọn danh mục thu 2
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Upload image | Product name | Decription | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      | 2019259.jpg  | XuanHoang    |            |          |       |        |       |        |        |          |          | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_014_PostWithInputFieldValidToDescription
  Scenario Outline: TC_014_Post with input field valid to description
    When I Input "<Upload image>" and "<Product name>" and "<Decription>" and "<Quantity>" and "<Price>" and "<Weight>" and "<Width>" and "<Length>" and "<Height>"
    And I Select random combobox Chọn danh mục so 1
    And I Select random combobox Chọn danh mục thu 2
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Upload image | Product name | Decription          | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      | 2019259.jpg  | XuanHoang    | Description product |          |       |        |       |        |        |          |          | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |

  @TC_015_PostWithInputValidFieldToQuantity
  Scenario Outline: TC_015_Upload fields Image Succefully and Input Random Product Name and RandomCombobox
    When I Input "<Upload image>" and "<Product name>" and "<Decription>" and "<Quantity>" and "<Price>" and "<Weight>" and "<Width>" and "<Length>" and "<Height>"
    And I Select random combobox Chọn danh mục so 1
    And I Select random combobox Chọn danh mục thu 2
    And I click button Post
    Then Verify successfully all message "<Message1>" and "<Message2>" and "<Message3>" and "<Message4>" and "<Message5>" and "<Message6>" and "<Message7>" and "<Message8>" and "<Message9>"and "<Message10>"

    Examples: 
      | Upload image | Product name | Decription          | Quantity | Price | Weight | Width | Length | Height | Message1 | Message2 | Message4            | Message5       | Message6      | Message7                    | Message8 | Message9 | Message10 |
      | 2019259.jpg  | XuanHoang    | Description product |       10 |       |        |       |        |        |          |          | Hãy mô tả sản phẩm. | Nhập số lượng. | Hãy điền giá. | Hãy điền cân nặng sản phẩm. | Bắt buộc | Bắt buộc | Bắt buộc  |
