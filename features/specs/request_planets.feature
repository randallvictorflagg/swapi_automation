Feature: Validate response from planets API in swapi.dev
Scenario: Request para API planets do swapi.co
    When a GET request for planets API is sent
    And another GET request for planets API with a higher value is sent
    Then the response and error must have a valid text message
