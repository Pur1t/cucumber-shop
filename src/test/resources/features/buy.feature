Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Chip" with price 70.00 and stock of 50 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    And total stock of "Bread" is 3

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Chip" with quantity 7
    Then total should be 611.00
    And total stock of "Bread" is 3
    And total stock of "Jam" is 9
    And total stock of "Chip" is 43

#  ________________________________
#               ||  ||
#               ||  ||
#  =-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=
#        Name: Purit Tepkrit
#       Student ID: 6410402121
#  =-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=