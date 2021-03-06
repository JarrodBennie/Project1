# CodeClan - Solo Project 1  
## MoneyCashboard  
  
## Introduction  
This was the first of four projects that I will be undertaking during my time at CodeClan. The time frame for this project was one week (10/03/2016 - 17/03/2016). It marked the end of my first four weeks, which were spent learning the fundamentals of software and web development; utilising the following technologies and design patterns:  
* Ruby (with Sinatra web framework/DSL)
* SQL (with PostgreSQL object-relational database management system)
* HTML/CSS
* Object oriented programming (OOP)
* Test driven development (TDD)  
* Representational state transfer architecture (RESTful development)
* Model-view-controller architecture (MVC)  
  
## Brief  
I was tasked with creating a web app that would allow the user to track their spending in an effort to be more frugal.  
The app had to allow the user to create transactions, each having an associated value, merchant and tag (food, for example). 

Suggested MVP:  
* Create new transactions
* Display all transactions
* Display total expenditure
* Display total expenditure by tag

Suggested additional functionality:
* CRUD actions for transations
* Create a route that sends down Account data as JSON
  
## Design  
In creating this web app my intention was to consolidate as much of the information that I had learned thus far as possible, utilising all technologies and adhering to all design patterns; while creating a fully-featured product with a professional feel.  
  
While planning the project I decided that to achieve a professional feel it was important to, where possible, safeguard the user from the possibility of encountering errors.  For example, rather than allow the user to encounter a "foreign key violation" when attempting to remove a merchant or tag that is currently being used by a transaction, I opted to only allow the user to create or update entries to these tables. I also added guidance for first time users, a catch-all 404 page and "no results found" feedback for search queries to the same end.  
  
## Outcome  
Overall I'm very pleased with the result of this project. I feel that I achieved my goals and created a simple but slick looking web application with enough functionality to genuinely benefit the user and help them to achieve their budgeting objectives.  
MoneyCashboard has all of the functionality specified in the brief, as well as multiple other features including chronological data analysis based on comparison between database content and Ruby's date class and routes allowing the user to post data as JSON.

## Moving Forward
This repository will remain unmodified as to preserve the memory of my first project at CodeClan, however I may create an updated version at some point in the future. Should I resume work on the project, I would like to add the following functionality:  
* Further chronological transaction analysis - previous 7 days, previous month, etc.
* Upcoming transactions - input future transactions and display those due during the next seven days.
* Income MVC collection - input future or past incoming transactions and balance those against transactions and budgets.
