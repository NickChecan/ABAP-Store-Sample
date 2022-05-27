*&---------------------------------------------------------------------*
*& Report  ZGENERATE_STORE_DATA
*&---------------------------------------------------------------------*
REPORT zgenerate_store_data.

*&---------------------------------------------------------------------*
*& Customer
*&---------------------------------------------------------------------*

DATA customer TYPE zstore_customer.

customer-id            = 1.
customer-forename      = 'Nicholas'.
customer-surname       = 'Checan'.
customer-social_id     = '123456789'.
customer-phone         = '+551199999-9999'.
customer-email         = 'nick@email.com'.
customer-creation_date = '19000101'.
MODIFY zstore_customer FROM customer.

customer-id            = 2.
customer-forename      = 'Jonathan'.
customer-surname       = 'Wick'.
customer-social_id     = '91923929X'.
customer-phone         = '+551198765-4321'.
customer-email         = 'test@test.com'.
customer-creation_date = '20200526'.
MODIFY zstore_customer FROM customer.

*&---------------------------------------------------------------------*
*& Product
*&---------------------------------------------------------------------*

DATA product TYPE zstore_product.

product-id       = 1.
product-name     = 'Potato'.
product-segment  = 'Food'.
product-price    = 10.
product-currency = 'USD'.
MODIFY zstore_product FROM product.

product-id       = 2.
product-name     = 'Tomato'.
product-segment  = 'Food'.
product-price    = 75.
product-currency = 'USD'.
MODIFY zstore_product FROM product.

product-id       = 3.
product-name     = 'Playstation 5'.
product-segment  = 'Videogame'.
product-price    = 500.
product-currency = 'USD'.
MODIFY zstore_product FROM product.

product-id       = 4.
product-name     = 'Dungeons & Dragons'.
product-segment  = 'Book'.
product-price    = 60.
product-currency = 'USD'.
MODIFY zstore_product FROM product.

product-id       = 5.
product-name     = 'The Mythical Man-Month'.
product-segment  = 'Book'.
product-price    = 59.
product-currency = 'USD'.
MODIFY zstore_product FROM product.

*&---------------------------------------------------------------------*
*& Sales
*&---------------------------------------------------------------------*

DATA sale TYPE zstore_sales.

sale-id             = 1.
sale-operation_date = '20220526'.
sale-customer       = 1.
MODIFY zstore_sales FROM sale.

sale-id             = 2.
sale-operation_date = '20220520'.
sale-customer       = 1.
MODIFY zstore_sales FROM sale.

sale-id             = 3.
sale-operation_date = '20220526'.
sale-customer       = 2.
MODIFY zstore_sales FROM sale.

*&---------------------------------------------------------------------*
*& Sales Item
*&---------------------------------------------------------------------*

DATA sales_item TYPE zstore_sales_itm.

sales_item-id       = 1.
sales_item-item     = 1.
sales_item-product  = 3.
sales_item-price    = 500.
sales_item-currency = 'USD'.
MODIFY zstore_sales_itm FROM sales_item.

sales_item-id       = 1.
sales_item-item     = 2.
sales_item-product  = 4.
sales_item-price    = 45.
sales_item-currency = 'USD'.
MODIFY zstore_sales_itm FROM sales_item.

sales_item-id       = 2.
sales_item-item     = 1.
sales_item-product  = 1.
sales_item-price    = 8.
sales_item-currency = 'USD'.
MODIFY zstore_sales_itm FROM sales_item.

sales_item-id       = 3.
sales_item-item     = 1.
sales_item-product  = 5.
sales_item-price    = 50.
sales_item-currency = 'USD'.
MODIFY zstore_sales_itm FROM sales_item.

*&---------------------------------------------------------------------*
*& Here it comes...
*&---------------------------------------------------------------------*

COMMIT WORK AND WAIT.
