# SalesAnalyticsDB

# Sales Analytics Database

## Description
Welcome to the **SalesAnalyticsDB** repository! This project provides a simple database schema for managing and analyzing sales, customer, and product data. It includes SQL scripts that allow you to create the database, tables, insert sample data, and run basic queries to analyze the sales transactions.

This setup can be used to track and manage sales, customers, inventory, and product data for an e-commerce business.

## Database Structure
The **SalesAnalyticsDB** contains the following tables:

- **customers**: Stores customer details, including first and last names, email, and region.
- **products**: Stores information about products, including product name, category, and price.
- **sales**: Records sales transactions, linking customers and products, along with the sale amount and date.
- **inventory**: Tracks the stock level of each product.

### Table Relationships:
- **`sales`** has foreign keys linking to both the **`customers`** and **`products`** tables.
- **`inventory`** links to **`products`** to manage stock levels.

## Setup Instructions

### Prerequisites
- You need **MySQL** (or any SQL-compatible database system).
- A MySQL client such as **MySQL Workbench**, **phpMyAdmin**, or **DBeaver** to run SQL queries.

### Steps to Set Up:

1. **Clone the repository**:
   Open your terminal or Git client and clone this repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/SalesAnalyticsDB.git
