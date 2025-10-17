CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT, 
    author_name VARCHAR(215) 
);
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(130), 
    author_id INT, 
    FOREIGN KEY (author_id) REFERENCES Authors (author_id),
    price DOUBLE, 
    publication_date DATE
);
CREATE TABLE Customers (
    customer_id PRIMARY KEY, 
    customer_name VARCHAR(215), 
    email VARCHAR(215),  
    address TEXT
);
CREATE TABLE Oders (
    order_id PRIMARY KEY, 
    customer_id INT,
     FOREIGN KEY (customer_id) REFERENCES Customers (customer_id), 
    oder_date DATE
);
CREATE TABLE Oder_Details (
    orderdetailid INT PRIMARY KEY, 
    oder_id INT, 
    FOREIGN KEY (oder_id) REFERENCES Oders (order_id), 
    book_id INT, 
    FOREIGN KEY (book_id) REFERENCES Books (book_id), 
    quantity DOUBLE
);