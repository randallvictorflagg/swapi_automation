Feature: Validate response from films API in swapi.dev
Scenario: Request for films API in swapi.dev
    When a GET request for films API is sent
    Then the response contains valid data