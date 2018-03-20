Feature: Display product page

Customers should be able to select a product and view the details for that product. 
The page should display the immediate product information of images, name, supplier, price, star rating, delivery information and any personalised requirements.  
Further product information can be found in a menu such as Product Details, Customer Reviews, Delivery and Returns.

Acceptance Criteria:
	-	The customer will see the product details
	-	The delivery information for the product will be displayed.

Scenario: Selecting a product to view its delivery information

Given a customer wishes to view a products delivery information
When The customer selects a product 
Then the product information is displayed
And there is delivery information is displayed on the page.
