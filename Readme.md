**Little Lemon Backend API**

**Overview:**
Little Lemon Backend API is a Django-based application designed to facilitate restaurant management functionalities through RESTful APIs. It incorporates Django Rest Framework and Djoser for authentication, providing secure access to various endpoints for menu management, user registration, table booking, and authentication token generation.

**Endpoints:**

1. **/auth/users/**
   - GET: Displays user info with a valid token, requires authentication.
   - POST: Allows new user registration with username, password, and email.


2. **/auth/users/me/**
   - GET, PUT, PATCH, DELETE: Enables viewing, updating, and deleting user info with a valid token.


3. **/restaurant/menu-items/**
   - GET: Displays all menu items irrespective of user, token, or login status.
   - POST: Adds a new menu item with valid token and authorization.


4. **/restaurant/menu-items/<int:pk>/**
   - GET: Displays menu item with the given ID in the URL.


5. **/auth/token/login/** or **/restaurant/api-token-auth/**
   - POST: Generates authentication token with valid username and password.


6. **/restaurant/table-booking/**
   - GET: Displays bookings of the user with a valid token; shows all bookings if the token belongs to a manager.
   - POST: Creates a booking for the user with given details and valid token.


7. **/restaurant/table-booking/<int:pk>/**
   - GET: Displays booking of the user with a valid token and specified booking ID.
   - PUT, PATCH, DELETE: Allows updating and deleting the booking with valid user token and manager authorization.


8. **/restaurant/orders/**
   - GET: Displays orders of the user with a valid token; shows all bookings if the token belongs to a manager.
   - POST: Creates a order for the user with given details and valid token.


9. **/restaurant/orders/<int:pk>/**
   - GET: Displays orders of the user with a valid token and specified booking ID.
   - PUT, DELETE: Allows updating and deleting the order with valid user token and manager authorization.
   - PATCH: Allows delivery crew to update the delivery status of the order.


**Usage:**
- Ensure Django and Django Rest Framework are installed.
- Set up Djoser for user authentication.
- Use appropriate HTTP methods to access endpoints as per the provided descriptions.


**Note:** Authentication tokens are essential for accessing authenticated endpoints. Ensure token management for secure access to the API functionalities.

For more details on usage and implementation, refer to the code documentation and comments.

*This README is a concise guide for utilizing the Little Lemon Backend API. For detailed implementation instructions and additional features, refer to the codebase and documentation.*