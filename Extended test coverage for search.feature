Feature: Search

Customers should be able to search using a general phrase or for a specific product.  
There are options to refine the returned products 
The search should return relevant matches with the closest matched products at the top. 
Links to related searches should be displayed to the user. 
The search experience should be quick, easy to use and have have minimum steps for the customer to compete.

Acceptance Criteria:
	-	Only relevant products are returned in the search results
	-	The most relevant products are at the top of the search results
	-	If an invalid search text is submitted then an appropriate message is displayed

Scenario: Searching for a valid product

Given a customer is searching for <VALID SEARCH TEXT>
When The customer enters the <VALID SEARCH TEXT> and submits the request
Then the relevant products are returned with the most appropriate products at the top


Scenario: Searching for a valid product in a specific department

Given a customer is searching for <VALID SEARCH TEXT>
And in  <DEPARTMENT> 
When the customer enters the <VALID SEARCH TEXT>, <DEPARTMENT> and submits the request
Then the relevant products within <DEPARTMENT> are returned with the most appropriate products at the top


Scenario: Searching for a valid product with specific delivery options

Given a customer is searching for <VALID SEARCH TEXT>
And wants <DELIVERY>
When the customer enters the <VALID SEARCH TEXT>, <DELIVERY> and submits the request
Then the relevant products with <DELIVERY> are returned with the most appropriate products at the top


Scenario: Searching for a valid product within a specific price range

Given a customer is searching for <VALID SEARCH TEXT>
And wants <PRICE UP TO>
When the customer enters the <VALID SEARCH TEXT>, selects the <PRICE UP TO>
and submits the request
Then the relevant products up to the price of <PRICE UP TO> are returned with the most appropriate products at the top


Scenario: Searching for a valid product with personalisation requirements

Given a customer is searching for <VALID SEARCH TEXT>
And wants <PERSONALISATION>
When the customer enters the <VALID SEARCH TEXT>, selects <PERSONALISATION> and submits the request
Then the relevant items with <PERSONALISATION> are returned with the most appropriate products at the top


Scenario: Searching for a valid product with special features

Given a customer is searching for <VALID SEARCH TEXT>
And wants <SPECIAL FEATURE>
When the customer enters the <VALID SEARCH TEXT>, selects <SPECIAL FEATURE> and submits the request
Then the relevant items with <SPECIAL FEATURE> are returned with the most appropriate products at the top


Scenario: Searching for a valid product with specific delivery zones

Given a customer is searching for <VALID SEARCH TEXT>
And wants <ZONES>
When the customer enters the <VALID SEARCH TEXT>, selects <ZONES> and submits the request
Then the relevant items with <ZONES> are returned with the most appropriate products at the top


Scenario: Searching for an invalid product

Given a customer is searching for <INVALID SEARCH TEXT>
When the customer enters the <INVALID SEARCH TEXT> and submits the request
Then an appropriate message is returned “Unfortunately your search did not match any of our products.”


#SEARCH CONDITIONS
| VALID SEARCH TEXT | INVALID SEARCH TEXT | DEPARTMENT
| Mothers Day       | sfh                 | accessories
| Father Day        | jhknn               | baby & child
| Easter            | gkhnl.mlh           | cards
| Christmas                               | fashion
| Children

| PRICE UP TO | PERSONALISATION     | SPECIAL FEATURE     | DELIVERY  | ZONES
| 50          | non-personalised    | gift wrap available | free      | mainland uk
| 100         | can be personalised | made in Britain     | express   | northern ireland 
| 150         |                     | exclusive           | easter    | scotland 
| 200         |                     | eco-friendly        |           | other uk islands
| 250+	



