# Author: Amber Ebersohl
# Purpose: Write Gherkin behavior-driven tests for retirement.py program
	  
Feature: Retirement Calculator
  As a person with a desire to retire, I want to enter my birth year learn what age I will be when I can collect full social security benefits. I would also like to enter my birth year and month and retirement year and month to determine what date I can retire.
  
  Scenario Outline: Calculate Retirement Age
    Given the python function calculate_retirement_age in retirement.py is called
    When the user input "<birth_year>" is entered
	Then the year value "<age_year>" and month value "<age_month>" are returned
    
    Examples: Birthyears
      | birth_year | age_year | age_month |
      | 1936       | 65       | 0         |
      | 1937       | 65       | 0         |
      | 1938       | 65       | 2         |
      | 1939       | 65       | 4         |
      | 1940       | 65       | 6         |
      | 1941       | 65       | 8         |
	  | 1942       | 65       | 10        |
      | 1943       | 66       | 0         |
      | 1954       | 66       | 0         |
      | 1955       | 66       | 2         |
      | 1956       | 66       | 4         |
      | 1957       | 66       | 6         |
	  | 1958       | 66       | 8         |
      | 1959       | 66       | 10        |
      | 1960       | 67       | 0         |
	  | 1900       | 65       | 0         |
	  | 2999       | 67       | 0         |
      | 1899       | Invalid  | Invalid   |
      | 3000       | Invalid  | Invalid   |
	  | qwer       | Invalid  | Invalid   |
	  | 2019.6     | 67       | 0         |


  Scenario Outline: Calculate Retirement Date
    Given the python function calculate_retirement_date in retirement.py is called
    When the user input "<birth_year>", "<birth_month>", "<age_year>", and "<age_month>" is entered
	Then the date value "<retirement_date>" is returned
    
    Examples: Retirement Datapoints
      | birth_year | birth_month | age_year | age_month | retirement_date     |
      | 1959       | 6           | 66       | 10        | April 2026          |
      | 1940       | 6           | 65       | 6         | December 2005       |
      | 1940.8     | 6           | 65       | 6         | December 2005       |
	  | 1940       | 6.2         | 65       | 6         | December 2005       |
	  | 1940       | 6           | 65.7     | 6         | December 2005       |
	  | 1940       | 6           | 65       | 6.2       | December 2005       |
      | 1899       | 6           | 66       | 0         | Invalid Birth Year  |
      | 3000       | 6           | 66       | 0         | Invalid Birth Year  |
	  | qwer       | 6           | 66       | 0         | Invalid Birth Year  |
	  | 1990       | 13          | 29       | 3         | Invalid Birth Month |
	  | 1990       | 0           | 29       | 3         | Invalid Birth Month |
	  | 1990       | z           | 29       | 3         | Invalid Birth Month |
      | 1953       | 6           | 68       | 5         | Invalid Age Year    |
      | 1953       | 6           | 64       | 5         | Invalid Age Year    |
	  | 1953       | 6           | qw       | 5         | Invalid Age Year    |
	  | 1953       | 6           | 66       | -1        | Invalid Age Month   |
	  | 1953       | 6           | 66       | 12        | Invalid Age Month   |
	  | 1953       | 6           | 66       | z         | Invalid Age Month   |
