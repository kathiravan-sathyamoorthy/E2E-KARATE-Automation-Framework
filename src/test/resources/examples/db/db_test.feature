Feature: Dummy DB test

  Scenario: Connect to dummy DB
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
    * def db = Java.type('examples.db.DummyDb')
    * def result = db.connect(dbconfig)
    * print 'DB result:', result
    * match result.status == 'connected'
