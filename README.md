# Book-Management-System-Anlysis
The "Book Management System Analysis" project involves examining a dataset consisting of tables related to a book management system. The dataset includes tables for storing information about authors, books, book conditions, book reviews, categories, owners, publishers, reviewers, and states.
The objective of this project is to perform various analyses and gain insights into different aspects of the book management system. This includes analyzing book sales, author performance, Publisher Analysis, Category Analysis and Owner Analysis. By leveraging SQL queries and data visualization techniques, we aim to uncover patterns, trends, and opportunities for improvement within the book management system.

# Data Descrition
The database schema represents a book management system, including tables for authors, books, book conditions, book reviews, categories, owners, publishers, reviewers, and states.

Here's a description of each table:

- author: Contains information about authors such as their ID, last name, first name, and photo.
- book: Stores details about books including ISBN, title, description, category, edition, and publisher ID.
- bookauthor: Represents the relationship between books and authors, indicating which authors contributed to each book.
- bookcondition: Defines different conditions for books, with ranks, descriptions, and full descriptions.
bookreview: Contains reviews for books, including ISBN, reviewer ID, rating, and comments.
category: Stores book categories with category ID and description.
conditionevaluator: Defines evaluators for book conditions with their ID and name.
owner: Stores information about book owners such as owner ID, last name, first name, phone number, username, and password.
ownersbook: Represents the ownership of books by owners, including owner ID, ISBN, ranks, evaluator, comments, price, and transaction flag.
publisher: Contains details about publishers including publisher ID, name, city, and state code.
reviewer: Stores information about book reviewers with reviewer ID, name, and employer.
state: Defines states with state code and state name.


