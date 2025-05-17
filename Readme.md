**Little Lemon Backend API**

**Overview:**
Little Lemon Backend API is a Django-based application designed to facilitate restaurant management functionalities through RESTful APIs. It incorporates Django Rest Framework and Djoser for authentication, providing secure access to various endpoints for menu management, user registration, table booking, and authentication token generation.

### Prerequisites

Before you begin, ensure you have met the following requirements:

- Python 3.x installed
- Pip (Python package manager)
- Virtual environment (optional but recommended)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/SampathKumar025/LittleLemon-BackEndDev.git

2. Create a virtual environment (optional but recommended):

    ```bash
    python -m venv djvenv
    venv\Scripts\activate      # On Windows

3. Install the required dependencies:
   - Ensure Django and Django Rest Framework are installed.
   - Set up Djoser for user authentication.
   - Use appropriate HTTP methods to access endpoints as per the provided descriptions.

    ```bash
    pip install -r requirements.txt

4. Install MySQL on your system. Setup root password and create a database of any name. Make sure to make the changes under Databases in the settings.py file of your django project.
Or
You can import the Database file from the dumps folder in this repo which would help to work with the Data on the go.
   - Open MySQL Workbench and connect to the desired MySQL server (it can be the same or a different server).
   - Navigate to the "Server" tab in the main menu.
   - Select "Data Import." This opens the Data Import wizard.
   - Choose "Import from Self-Contained File."
   - Browse and select the .sql file from the 'dumps' folder.
   - Choose the target schema (database). You can either select an existing schema or create a new one.
   - Click "Start Import" to begin the import process.
Verify the Import:
   - After the import is complete, verify that the database and its contents have been successfully restored.
   - Check the tables, data, and any other database objects to ensure they are present and correct.

5. Navigate to the project folder and make migrations with the below commands to reflect the changes in the Database.

   ```bash
   cd littlelemon
   py manage.py makemigrations
   py manage.py migrate

6. Start the Django development server:

    ```bash
    py manage.py runserver

7. Install Postman or Insomnia tools to work with the below API endpoints of the Littlelemon Application.


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


**Note:** Authentication tokens are essential for accessing authenticated endpoints. Ensure token management for secure access to the API functionalities.

For more details on usage and implementation, refer to the code documentation and comments.

*This README is a concise guide for utilizing the Little Lemon Backend API. For detailed implementation instructions and additional features, refer to the codebase and documentation.*