Feature: Manage account on Mecury Tours web site

@register
Scenario: Register a new account
  Given I am on the Mecury Tours web site
  When I request to register a new account
  Then I am asked for and enter Contact Information:
    |firstName   | lastName | phone       | email                         |
    |Guinea      | Piglette   | 888-555-1234| guinea.piglette3@somedomain.com |
  And I am asked for and enter Mailing Information:
    | address1        | address2                 | city       | state              | postalCode | country       |
    | The White House | 1600 Pennsylvania Ave NW | Washington | DC                 | 20500      | United States |
  And I am asked for and enter User Information:
    | userName    | password    | confirmPassword |
    | piglette3   | Go#piggies1 | Go#piggies1     |
  When I submit the new registration request
  Then the registered page is displayed with salutations to "Guinea Piglette" and with user name "piglette3"
