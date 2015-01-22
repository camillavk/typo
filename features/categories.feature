Feature: Categorise blogs
  As a blog administrator
  In order to organise my blog
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add categories
    Given I am on the new category page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Something"
    And I fill in "category_description" with "Anything"
    And I press "Save"
    Then I should see "Category was successfully saved"
    Then I should be on the new category page

  Scenario: Successfully edit categories
    Given I am on the edit category page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Something"
    And I fill in "category_description" with "Anything"
    And I press "Save"
    Then I should see "Category was successfully saved"
    Then I should be on the new category page
