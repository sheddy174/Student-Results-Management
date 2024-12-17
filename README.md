# Student-Results-Management
The Student Result Management System is designed primarily for use in educational institutions, including universities, colleges, and schools, where managing and distributing student results efficiently in essential. These institutions offer academic programs and courses across various fields and are dedicated to providing high-quality education.


# Student Results Management System

A web-based application for managing student results, developed using PHP, MySQL, HTML, CSS, and JavaScript.

## Features

- **Student Management**: Add, update, and manage student records.
- **Course Management**: Add and manage courses.
- **Result Management**: Record and manage student grades, calculate grade points, and validate inputs.
- **User Authentication**: Secure login for administrators and authorized users.
- **Error Handling**: Display detailed error messages for input validation and database operations.

## Prerequisites

- **PHP** (version 7.4 or higher)
- **MySQL**
- **XAMPP/WAMP/MAMP** (for local testing)
- **Git**

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/sheddy174/Student-Results-Management.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Student-Results-Management
   ```
3. Import the `srms_db (1).sql"
   ` file located in the `db` folder into your MySQL database.
4. Configure the database connection:
   - Edit `/db/config.php` with your database credentials.

5. Start your local server (e.g., XAMPP or WAMP).

6. Access the application:
   - Open a browser and navigate to `http://localhost/Student Results Management`.

## Folder Structure

```
/actions         - Backend logic for CRUD operations
/assets         - css, js and images files
/db              - Database configuration and schema
/view/admin      - Admin-facing pages for managing students, courses, and results
```

## Usage

1. Login as an administrator.
2. Add students, courses, and results through the respective modules.
3. View or update results as needed.

## Technologies Used

- **Backend**: PHP, MySQL
- **Frontend**: HTML5, CSS (Tailwind CSS Framework), JavaScript
- **Database**: MySQL
- **Version Control**: Git

## License

This project is licensed under the [MIT License](LICENSE).
