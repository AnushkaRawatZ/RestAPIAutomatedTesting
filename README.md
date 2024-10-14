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

<img width="1440" alt="screenshot1" src="https://github.com/user-attachments/assets/e9ea2071-185e-4eb8-8f5c-b934748f8fb6">
<img width="1440" alt="screenshot2" src="https://github.com/user-attachments/assets/14bbecdf-4fd7-4a28-821f-9113f7c6ca4c">
<img width="1440" alt="screenshot3" src="https://github.com/user-attachments/assets/63367493-2398-4676-b042-dee9c1c52f05">
<img width="1440" alt="screenshot4" src="https://github.com/user-attachments/assets/fa6fa1d2-79cc-4e19-a078-3844ff0e03f8">
<img width="1440" alt="screenshot5" src="https://github.com/user-attachments/assets/66708632-8e43-44aa-82a4-d177634a2613">

## Execution Result

View the command line output for a summary of passed and failed tests, and check the HTML report for more details.



