Feature: Search for a Mothers Day Gift

Customers should be able to search using a general phrase or for a specific product.
There are options to refine the returned products
The search should return relevant matches with the closest matched products at the top.
Links to related searches should be displayed to the user.
The search experience should be quick, easy to use and have have minimum steps for the customer to complete.

Acceptance Criteria:
        -       Only relevant products are returned in the search results
        -       The most relevant products are at the top of the search results
        -       If an invalid search text is submitted then an appropriate message is displayed

Scenario: Searching for a mothers day gift with free delivery

Given a customer naviagtes to the homepage
When The customer enters ‘Mothers Day Gifts and free delivery and submits the request
Then the relevant items are returned                                                                                  
