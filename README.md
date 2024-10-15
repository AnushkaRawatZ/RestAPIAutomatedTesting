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
<img width="1440" alt="Screenshot 2024-10-15 at 10 59 54 AM" src="https://github.com/user-attachments/assets/7be6fd54-274f-490f-8b50-f65e82b91d8f">

<img width="1436" alt="Screenshot 2024-10-15 at 11 01 24 AM" src="https://github.com/user-attachments/assets/3e77723e-3ff0-444d-b57d-de0f225cf91e">

<img width="1193" alt="Screenshot 2024-10-15 at 11 00 09 AM" src="https://github.com/user-attachments/assets/57df00bc-0a5d-4b3d-bdb2-4a9c84d8efc2">


## Execution Result

View the command line output for a summary of passed and failed tests, and check the HTML report for more details.



