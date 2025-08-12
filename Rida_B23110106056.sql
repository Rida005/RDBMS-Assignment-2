CREATE TABLE Customers(
    CustomerID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    City VARCHAR(255),
    State VARCHAR(255),
    JoinDate DATE
);

INSERT INTO Customers(CustomerID, CustomerName, City, State, JoinDate)
VALUES
(1, 'Asad', 'Karachi', 'Sindh', '2021-03-24'),
(2, 'Alisha', 'Karachi', 'Sindh', '2019-05-17'),
(3, 'Aroma', 'Sukker', 'Sindh', '2019-03-09'),
(4, 'Qureshi', 'Karachi', 'Sindh', '2021-12-08'),
(5, 'Alishar', 'Lahore', 'Punjab', '2019-11-12'),
(6, 'Rose', 'Rawalpindi', 'Punjab', '2013-10-22'),
(7, 'Erha', 'Hyderabad', 'Sindh', '2023-02-28'),
(8, 'Sehrish', 'Naran', 'KPK', '2019-04-15'),
(9, 'Marium', 'Lahore', 'Punjab', '2023-04-16'),
(10, 'Maliha', 'Jhang', 'Sindh', '2022-05-13'),
(11, 'Ali', 'Hyderabad', 'Sindh', '2019-07-04'),
(12, 'Ahmad', 'Peshawar', 'KPK', '2022-08-24'),
(13, 'Fariha', 'Rawalpindi', 'Punjab', '2018-09-23'),
(14, 'Hanan', 'Karachi', 'Sindh', '2017-11-27'),
(15, 'Hamza', 'Islamabad', 'Punjab', '2020-12-25');
SELECT * FROM Customers;

CREATE TABLE Cars (
    CarID SERIAL PRIMARY KEY,
    Model VARCHAR(255) NOT NULL,
    Brand VARCHAR(255),
    Year INT NOT NULL,
    Price DECIMAL(10,2),
    Color VARCHAR(255),
    InventoryCount INT
);

INSERT INTO Cars (CarID, Model, Brand, Year, Price, Color, InventoryCount) 
VALUES
(1, 'Civic', 'Honda', 2023, 5800000, 'White', 5),
(2, 'Corolla Altis', 'Toyota', 2022, 5200000, 'Black', 7),
(3, 'Sportage', 'Kia', 2023, 7500000, 'Silver', 3),
(4, 'Sonata', 'Hyundai', 2023, 9800000, 'Blue', 2),
(5, 'Swift', 'Suzuki', 2022, 3200000, 'Red', 8),
(6, 'Alto VXL', 'Suzuki', 2023, 2250000, 'White', 12),
(7, 'Elantra', 'Hyundai', 2023, 5600000, 'Grey', 4),
(8, 'Picanto', 'Kia', 2022, 3000000, 'Yellow', 6),
(9, 'Fortuner', 'Toyota', 2023, 15500000, 'Black', 1),
(10, 'Revo Hilux', 'Toyota', 2023, 12200000, 'Silver', 2),
(11, 'City', 'Honda', 2023, 4800000, 'Blue', 5),
(12, 'MG HS', 'MG Motors', 2023, 8700000, 'White', 3),
(13, 'Tucson', 'Hyundai', 2023, 7900000, 'Red', 4),
(14, 'Cultus VXL', 'Suzuki', 2022, 3100000, 'Grey', 6),
(15, 'Glory 580 Pro', 'DFSK', 2023, 6300000, 'Black', 2);

SELECT * FROM Cars;

CREATE TABLE Sales (
    SaleID SERIAL PRIMARY KEY,
    CustomerID INT NOT NULL,
    CarID INT NOT NULL,
    SaleDate DATE NOT NULL,
    SalePrice DECIMAL(12,2) NOT NULL,
    SalespersonID INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
  
);
INSERT INTO Sales (SaleID, CustomerID, CarID, SaleDate, SalePrice, SalespersonID)
VALUES
(1, 1, 1, '2023-03-15', 5750000, 1),
(2, 2, 3, '2023-04-02', 7400000, 2),
(3, 3, 5, '2022-12-20', 3150000, 3),
(4, 4, 9, '2023-06-10', 15400000, 4),
(5, 5, 6, '2023-01-25', 2200000, 2),
(6, 6, 8, '2022-09-14', 2950000, 1),
(7, 7, 2, '2023-05-12', 5100000, 3),
(8, 8, 14, '2022-11-18', 3050000, 2),
(9, 9, 11, '2023-02-22', 4700000, 4),
(10, 10, 4, '2023-07-05', 9700000, 1),
(11, 11, 7, '2023-03-30', 5550000, 2),
(12, 12, 13, '2023-08-09', 7800000, 3),
(13, 13, 12, '2023-04-25', 8600000, 4),
(14, 14, 15, '2023-09-14', 6250000, 1),
(15, 15, 10, '2023-05-29', 12100000, 2);

SELECT * FROM Sales ;

CREATE TABLE Salespersons (
    SalespersonID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL
);
INSERT INTO Salespersons (SalespersonID, Name, Department, HireDate)
VALUES
(1, 'Ali Khan', 'Luxury Cars', '2020-05-15'),
(2, 'Sara Ahmed', 'SUVs', '2019-11-01'),
(3, 'Bilal Hussain', 'Sedans', '2021-02-20'),
(4, 'Fatima Noor', 'Sports Cars', '2018-07-10'),
(5, 'Usman Raza', 'Luxury Cars', '2022-03-05'),
(6, 'Ayesha Malik', 'SUVs', '2020-09-12'),
(7, 'Hassan Shah', 'Sedans', '2021-06-28'),
(8, 'Nimra Zafar', 'Sports Cars', '2019-12-19'),
(9, 'Imran Qureshi', 'Luxury Cars', '2018-01-15'),
(10, 'Maria Javed', 'SUVs', '2022-07-03'),
(11, 'Kamran Ali', 'Sedans', '2020-11-21'),
(12, 'Zara Khan', 'Sports Cars', '2019-03-08'),
(13, 'Adnan Tariq', 'Luxury Cars', '2021-09-25'),
(14, 'Mehwish Gul', 'SUVs', '2018-06-17'),
(15, 'Fahad Iqbal', 'Sedans', '2023-01-14');
SELECT * FROM Salesperson;

CREATE TABLE ServiceRecords (
    RecordID SERIAL PRIMARY KEY,
    CarID INT NOT NULL,
    ServiceDate DATE NOT NULL,
    ServiceType VARCHAR(100) NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    TechnicianID INT NOT NULL
);
INSERT INTO ServiceRecords (RecordID, CarID, ServiceDate, ServiceType, Cost, TechnicianID)
VALUES
(1, 1, '2023-02-14', 'Oil Change', 5000.00, 101),
(2, 2, '2023-03-05', 'Brake Replacement', 18000.00, 102),
(3, 3, '2023-03-18', 'Tire Rotation', 3500.00, 103),
(4, 4, '2023-04-10', 'Battery Replacement', 15000.00, 104),
(5, 5, '2023-04-22', 'Engine Tuning', 25000.00, 105),
(6, 6, '2023-05-15', 'AC Repair', 12000.00, 106),
(7, 7, '2023-05-28', 'Transmission Repair', 75000.00, 107),
(8, 8, '2023-06-12', 'Suspension Repair', 30000.00, 108),
(9, 9, '2023-06-25', 'Oil Change', 5000.00, 109),
(10, 10, '2023-07-08', 'Brake Pad Replacement', 10000.00, 110),
(11, 11, '2023-07-20', 'Wheel Alignment', 4000.00, 111),
(12, 12, '2023-08-05', 'Engine Overhaul', 95000.00, 112),
(13, 13, '2023-08-17', 'Coolant Flush', 6000.00, 113),
(14, 14, '2023-09-01', 'AC Gas Refill', 3500.00, 114),
(15, 15, '2023-09-15', 'Clutch Replacement', 45000.00, 115);

-- Part 1:
SELECT COUNT(*) AS total_customers FROM Customers;
SELECT AVG(SalePrice) AS average_sale_price FROM Sales;
SELECT MAX(SalePrice) AS most_expensive_sale FROM Sales;
SELECT SUM(InventoryCount) AS total_inventory FROM Cars;
SELECT 
    MIN(SaleDate) AS earliest_sale_date,
    MAX(SaleDate) AS latest_sale_date
FROM Sales;

-- Part 2 
SELECT Brand, COUNT(Model) AS model_count FROM Cars GROUP BY Brand;
SELECT SalespersonID, SUM(SalePrice) AS TotalSales FROM Sales GROUP BY SalespersonID;
SELECT Model , AVG(Price) AS Average_salesPrice FROM Cars GROUP BY  Model;
SELECT ServiceType, AVG(Cost) AS AverageCost FROM ServiceRecords  GROUP BY ServiceType;
SELECT Brand, Color, COUNT(*) AS CarCount FROM Cars GROUP BY Brand, Color;

--Part 3 
SELECT Brand, COUNT(DISTINCT Model) AS model_count FROM Cars GROUP BY Brand HAVING COUNT(DISTINCT Model) > 5;
SELECT c.Model, COUNT(s.SaleID) AS total_sales FROM Sales s JOIN Cars c ON s.CarID = c.CarID GROUP BY c.Model HAVING COUNT(s.SaleID) > 10;
SELECT SalesPersonID, AVG(SalePrice) AS avg_price FROM Sales GROUP BY SalesPersonID HAVING AVG(SalePrice) > 50000;
SELECT SaleDate AS sale_month, COUNT(*) AS total_sales FROM Sales GROUP BY (SaleDate) HAVING COUNT(*) > 20;
SELECT ServiceType, AVG(Cost) AS avg_cost FROM ServiceRecords GROUP BY ServiceType HAVING AVG(Cost) > 500;



