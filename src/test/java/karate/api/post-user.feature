Feature: Create User API

  Background:
    * def token = '8cafb8d9be4135f05a13cd04434acc947b566ae89a3bdc3124f96ba9d01936bd'
    * url 'https://gorest.co.in/public/v1/'
    * header Content-Type = 'application/json'
    * header Authorization = 'Bearer ' + token

  Scenario: Create a user with valid data
    Given path 'users'
    And request
      """
      {
    "name":"Mansi",
    "email":"mansiii111@gmail.com",
    "gender":"female",
    "status":"inactive"
    }
      """
    When method post
    Then status 201
    And match response.data.name == "Mansi"
    And match response.data.email == "mansiii111@gmail.com"
    And match response.data.gender == "female"
    And match response.data.status == "inactive"

  Scenario: Create a user with an invalid email
    Given path 'users'
    And request
      """
      {
        "name": "Mansi",
        "email": "abc.com",
        "gender": "female",
        "status": "active"
      }
      """
    When method post
    Then status 422
    And match response.data.field == "email"
    And match response.data.message == "is invalid"

  Scenario: Create a user using an invalid gender
    Given path 'users'
    And request
      """
      {
      "name":"Rashi",
      "email":"rashihihii@gmail.com",
      "gender":"abc",
      "status":"active"
      }
      """
    When method post
    Then status 422
    And match response.data.field == "gender"
    And match response.data.message == "can't be blank, can be male of female"


  Scenario: Create a user using an email that has already been used
    Given path 'users'
    And request
      """
      {
      "name":"Sahi",
      "email":"mansiii111@gmail.com",
      "gender":"male",
      "status":"active"
      }
      """
    When method post
    Then status 422
    And response.data.field == "email"
    And response.data.message == "has already been taken"

  Scenario: Create a user using an invalid status value
    Given path 'users'
    And request
      """
      {
      "name":"Tanmay",
      "email":"tanmax@gmail.com",
      "gender":"male",
      "status":"hehe"
      }
      """
    When method post
    Then status 422
    And match response.data.field == "status"
    And match response.data.message == "can't be blank"


  Scenario: Creating a user without providing one or all field values
    Given path 'users'
    And request
     """
     {
     "name":"Akshat"
     }
     """
    When method post
    Then status 422

  Scenario: Creating a user with an empty field value
    Given path 'users'
    And request
      """
      {
      "name":"",
      "email":"rakshatrawat@hotmail.com",
      "gender":"male",
      "status":"active"
      }
      """
    When method post
    Then status 422
    And match response.data.field == "name"
    And match response.data.message == "can't be blank"


