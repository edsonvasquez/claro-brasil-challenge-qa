#language:en

Feature: Testing register and login 

    Background:
        Given I visit the portal            

@register
    Scenario: Registering an user

        When I fill personal information and send to register
        Then a user logged has to be shown

@login
    Scenario Outline: Login tests

        When I fill <email> and <password>
        Then a <message> should be validated

    Examples:
        | Type       | email                         | password      | message                      |
        | "Positive" | "nolan_yost@wolffparisian.co" | "Uj2CdRtB8hQ" | "Jasmine Boyer"              |
        | "Negative" | "nolan_yost@wolffparisian.co" | " "           | "Password is required."      |
        | "Negative" | " "                           | "Uj2CdRtB8hQ" | "An email address required." |
        | "Negative" | "qwerty@test.com"             | "Testes321"   | "Authentication failed."     |

        