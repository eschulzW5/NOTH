Feature: Search for a Mothers Day Gift within £0-£50

Customers should be able to search using a general phrase or for a specific product.  
The search should return relevant matches with the closest matched products at the top. 
Links to related searches should be displayed to the user. 
The search experience should be quick, easy to use and have have minimum steps for the customer to complete.

Acceptance Criteria:
	-	Only relevant products are returned in the search results
	-	The most relevant products are at the top of the search results
	-	There are options to refine the returned products 
	-	If an invalid search text is submitted then an appropriate message is displayed

Scenario: Searching for a valid product within a specific price range

Given a customer is searching for a mothers day gift 
And wants the price between £0 and £50
When the customer enters 'Mothers day gifts' and selects the £50 and submits the request
Then the relevant products up to £50 are returned with the most appropriate products at the top
