#language: en
#AOriginal Author: Claudia Nieto - Appium 1.x
#Author: David Morales Valencia - Appium 2.x
#Email: davidmoralv@gmail.com

@All
Feature: Validate shopping cart
  As a user of Exito
  I want to access the app
  To add one product to cart

  Background: Access to the main platform
    Given that I enter the apk movil Exito
      | email                   | password    |
      | xayiniy999@naymedia.com | Prueba1234* |


  @Register
  Scenario Outline: Validate the registration on the app
    When I register in the app
      | <names> | <lastNames> | <documentType> | <yearBirth> | <monthBirth> | <dayBirth> | <cellPhoneNumber> | <email> |
    Then verify that the registration is successful in the app

    Examples:
      | names  | lastNames | documentType | yearBirth | monthBirth | dayBirth | cellPhoneNumber | email                   |
      | Prueba | Test      | CC           | 2000      | 01         | 01       | 310000000       | xayiniy999@naymedia.com |


  @AddProductToCart
  Scenario Outline: Validate the product in the shopping cart on the app
    When I add product to cart
      | <productCategory> | <productName> | <country> | <store> |
    Then I verify the item in my shopping cart
      | <productName> |

    Examples:
      | productCategory | productName                                           | country | store                  |
      | Televisores     | Televisor HISENSE 43 Pulgadas LED Fhd Smart TV 43A4HV | Pereira | Exito Pereira Victoria |