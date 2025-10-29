Feature: API Test Example

  Scenario: Create user via API
    Given url baseUrl
    And path 'users'
    And request { name: 'John', job: 'leader' }
    When method post
    Then status 201
    And match response.name == 'John'
    * print 'User created:', response
