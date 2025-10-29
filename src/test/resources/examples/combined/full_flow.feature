Feature: Full flow - API, UI and DB

  Background:
    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def uiBaseUrl = 'https://example.com'
    * def dbconfig =
    """
    {
      name: 'testdb',
      host: 'localhost',
      port: 3306,
      user: 'admin',
      password: 'admin123'
    }
    """

  Scenario: API + UI + DB test
    Given url baseUrl + '/posts/1'
    When method GET
    Then status 200
    * print 'API test passed!'

    * def db = Java.type('examples.db.DummyDb')
    * def result = db.connect(dbconfig)
    * print 'DB connection:', result

    * driver uiBaseUrl
    * waitForUrl(uiBaseUrl)
