from pytest_bdd import scenarios, given, when, then
from retirement import *


@scenarios('../features/bdd_retirement.feature')
def test_calculate():
    pass

@given('the python function calculate_retirement_age in retirement.py is called')
def call_func():
    return

@when('the user input "<birth_year>" is entered')
def input_year(birth_year):
    calculate_retirement_age(birth_year)

@then('the year value "<age_year>" and month value "<age_month>" are returned')
def year_month_return(birth_year,age_year,age_month):
    assert calculate_retirement_age(birth_year) == age_year, age_month



@given('the python function calculate_retirement_date in retirement.py is called')
def call_func():
    return

@when('the user input "<birth_year>", "<birth_month>", "<age_year>", and "<age_month>" is entered')
def input_year(birth_year,birth_month,age_year,age_month):
    calculate_retirement_date(birth_year,birth_month,age_year,age_month)

@then('the date value "<retirement_date>" is returned')
def year_month_return(birth_year,birth_month,age_year,age_month,retirement_date):
    assert calculate_retirement_date(birth_year,birth_month,age_year,age_month) == retirement_date
