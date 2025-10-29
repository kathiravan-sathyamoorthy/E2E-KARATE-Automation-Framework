Feature: UI Test Example

  Scenario: Open Example Site
    Given driver uiBaseUrl
    Then waitFor('h1')
    * print 'Page loaded successfully'
