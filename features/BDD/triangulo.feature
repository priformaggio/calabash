@triangulo
Feature: Triangulo feature

  Scenario Outline: Calculo triangulo
    Given I am on triangulo app
    When I input the values <value1>, <value2> e <value3>
    Then I see a message informing which triangulo is

    Examples:
    |value1    |value2      |value3 |
    |valor1    | valor1     |valor1 |
