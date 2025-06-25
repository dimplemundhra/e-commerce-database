### e-commerce-database
This project contains the SQL schema and data operations for a simple e-commerce system, developed using **MySQL Workbench**. It includes table creation, data insertion, updates, deletions, and proper handling of NULL values and keys.

### 📁 Project Structure

- **ecommerce.sql** → Full database schema with `CREATE TABLE` statements
- **task2_data_handling.sql** → Data insertion, update, and delete statements
- **README.md** → Project documentation

### 📊 Entities and Tables

- **users** – stores user info (name, email, address, etc.)
- **categories** – product categories like Fashion, Electronics
- **products** – product details
- **orders** – order-level info
- **order_items** – items in each order
- **payments** – payment records

### 💡 Features

- ✅ Well-structured relational schema
- ✅ Primary and Foreign key constraints
- ✅ Proper handling of `NULL` and default values
- ✅ Use of `AUTO_INCREMENT` for primary keys
- ✅ Safe use of `INSERT`, `UPDATE`, `DELETE` with `WHERE`

### 🚀 How used

1. Import `ecommerce.sql` in **MySQL Workbench** or **phpMyAdmin**
2. Run `task2_data_handling.sql` to populate and test the database
3. Extend or integrate with web/mobile app backends

### 📌 Tools Used

- MySQL Workbench
- Git & GitHub

### 🧑‍💻 Author

[Dimple Mundhra] (https://github.com/dimplemundhra)

## 📜 License
This project is open for educational and personal learning purposes.
