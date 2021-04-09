@parentSuite("Gherkin_parent_suite")
@suite("Gherkin_suite")
@subSuite("Gherkin_sub_suite")
@epic("Behaviours epic")
@story("Behaviours story")
Feature: Gherkin_feature

    I want gherkin scenarios be logged into allure

    Scenario: Allure gherkin suite structure
        Given some precondition
        When I do some actions
        Then I get some result

    @owner("Oleksandr Shevtsov")
    @severity("critical")
    @AS_ID("42")
    @issue("jira","ACT-123")
    @tms("tms","TC-123")
    @link("google","https://google.com")
    @willBeTag
    Scenario: Allure labels
        Given some precondition
        Then I am very happy

    Scenario Outline: Some scenario with examples
        When I sum <a> and <b>
        Then I want to see <result>
        Examples:
            | a | b  | result |
            | 3 | 1  | 4      |
            | 3 | 1  | 5      |
            | 3 | 2  | 5      |
            | 2 | -1 | 1      |