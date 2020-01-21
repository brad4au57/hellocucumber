Feature: Check If It Is Friday

  Scenario: Sunday Isn't Friday
    Given today is Sunday
    When I ask whether it's Friday yet
    Then I should be told "Nope"

  Scenario: Friday is Friday
    Given today is Friday
    When I ask whether it's Friday yet
    Then I should be told "TGIF"

  Scenario Outline: Is Today Friday
    Given today is "<Day>"
    When I ask whether it's Friday yet
    Then I should be told "<Answer>"

  Examples:
    | Day           | Answer |
    | Friday        | TGIF   |
    | Sunday        | Nope   |
    | Anything Else | Nope   |