## Introduction
This project demonstrates REST API testing for CRUD operations (Create, Read, Update, Delete) using the GoRest API and the Karate Framework. Karate provides a straightforward way to write readable and maintainable tests for APIs.

## Features
* Simple syntax for API testing
* Supports POST, GET, PUT, and DELETE requests
* Built-in assertions for validating responses
* Generates detailed test reports

## Prerequisites
* Java JDK
* Maven

## Installation and Setup
* Clone the Repository
  ``` git clone https://github.com/AnushkaRawatZ/RestAPIAutomatedTesting.git ```
* Navigate to the Repository
  ``` cd <path> ```
* Install Dependencies
  ``` mvn clean install ```

## Running Tests
Execute the tests with:
 ``` mvn test ```

## Project Structure
```
RestAPIAutomatedTesting/
├── .idea/
│   ├── .gitignore
│   ├── encodings.xml
│   └── misc.xml
├── src/
│   └── test/
│       └── java/
│           └── karate/
│               ├── api/
│               │   ├── delete-user.feature
│               │   ├── get-user.feature
│               │   ├── post-user.feature
│               │   └── put-user.feature
│               └── runner/
│                   └── ExecuteTest.java
├── .gitignore
└── pom.xml
```
## Writing Tests
Tests in this project are written using Karate's Gherkin syntax in .feature files. Each feature file contains scenarios that describe the API interactions.
Each test typically includes the following components:
* Feature Description: A brief description of what the feature does.
* Scenario: Specific test cases for various operations (GET, POST, PUT, DELETE).
* Steps: Given, When, and Then steps that define the behavior of the test.
 ### Example Test Case:
 ```
Feature: Fetch user API

  Background:
    * def token = '8cafb8d9be4135f05a13cd04434acc947b566ae89a3bdc3124f96ba9d01936bd'
    Given url 'https://gorest.co.in/public/v1/'
    Given header Content-Type = 'application/json'
    And header Authorization = 'Bearer ' + token

  Scenario: Fetch data of all users
    Given path 'users'
    When method get
    Then status 200
```


## Reporting Tests
Reports are generated in the target/karate-reports directory. Open karate-summary.html.
The following screenshots show the generated HTML report: 


## Execution Result

View the command line output for a summary of passed and failed tests, and check the HTML report for more details.



