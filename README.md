# Homework-2
Project ASP.NET WebForms named Homework2

## Resume :

### Exercice 1 : Using the Validation controls 
- Create a project named Homework2 and a WebForm page in it named Purchase.aspx and titled Computing the price excluding tax and all tax included.
- The page contains a form showed in the image below, it permit the user to introduce the price of the product, the number of product ordered and the VAT (Value Added Tax), compute and display the price excluding tax and all tax included.
- Note that the number of product ordered and the VAT have respectively 1 and 18% (0,18 or 0.18) as default value. These values must be displayed in the form and used by default if the user doesn’t introduce anything in the input control.
- If price, number and vat respectively designate the price of the product, the number of the product ordered and the VAT rate (which must be between 0 and 1), then the price excluding tax and all tax included of the product ordered can be calculated by the equations:

priceET = price × number and priceATI = price × number (1 + vat)


### Exercice 2 : Submit a form to another page

Write a pair of WebForms form/action script named respectively Form.aspx and Login.aspx
that allows entering the user name and password, sending the user to another page and display to
him: Welcome followed by his name, your password is correct if his password is correct. If not,
the action script redirects the user to the form and reminds him his name in the name field and
displays the message bellow the password field: Sorry, your password is not correct.
