Feature: Update user API

  Background:
    * def token = '8cafb8d9be4135f05a13cd04434acc947b566ae89a3bdc3124f96ba9d01936bd'
    * url 'https://gorest.co.in/public/v1/'
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer ' + token

  Scenario: Update user's name to a valid name
  Given path 'users/7471669'
  And request
  """
  {
  "name":"Ashi"
  }
  """
  When method put
  Then status 200
  And match response.data.name == "Ashi"

  Scenario: Update user's email to a valid email
    Given path 'users/7471669'
    And request
    """
    {
    "email":"abcdefghij@gmail.com"
    }
    """
    When method put
    Then status 200
    And match response.data.email == "abcdefghij@gmail.com"

  Scenario: Updated user's gender to a valid gender
    Given path 'users/7471669'
    And request
    """
    {
    "gender":"female"
    }
    """
    When method put
    Then status 200
    And match response.data.gender == "female"

  Scenario: Update user's status to a valid status
    Given path 'users/7471669'
    And request
    """
    {
    "status":"inactive"
    }
    """
    When method put
    Then status 200
    And match response.data.status == "inactive"

  Scenario: Update user's email to an invalid email
  Given path 'users/7471669'
  And request
  """
  {
  "email":"hehe.com"
  }
  """
  When method put
  Then status 422
  And match response.data.field == "email"
  And match response.data.message == "is invalid"

  Scenario: Update user's gender to an invalid gender
  Given path 'users/7469513'
  And request
  """
  {
  "gender":"xyz"
  }
  """
  When method put
  Then status 422
  And match response.data.field == "gender"
  And match response.data.message == "can't be blank, can be male of female"


  Scenario: Update user's status to an invalid status
  Given path 'users/7469513'
  And request
  """
  {
  "status":"hehe"
  }
  """
  When method put
  Then status 422
  And match response.data.field == "status"
  And match response.data.message == "can't be blank"


  Scenario: Update user's details using an invalid ID
  Given path 'users/74'
  And request
  """
  {
  "name":"Tanmay"
  }
  """
  When method put
  Then status 404
  And match response.data.message == "Resource not found"

  Scenario: Not providing an ID when using Put method
  Given path 'users'
  And request
  """
  {
  "name":"Anushka"
  }
  """
  When method put
  Then status 404