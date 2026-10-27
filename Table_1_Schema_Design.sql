Drop database if exists Shopping_Management;
Create database Shopping_Management;
use shopping_Management;

Create Table customer (
ID int primary key auto_increment,
Customer_Name varchar(100) not null,
Email         varchar(50) unique not null,
Phone_Number  varchar(10) unique not null,
Age           tinyint unsigned check (age>0),
Gender        enum  ( 'Male' ,  'Female' , 'Other' ) default 'other',
Country       Varchar(50) default 'India',
City          Varchar(50),
Pincode       VarChar(6) default '201301',
Registration_Date Date Default (current_date),
Registration_Time Time Default (current_time),
Created_at_DateTime Timestamp Default (current_timestamp),
Address             Varchar(250),
Customer_Status     enum ( 'Active', 'Inactive' , 'Blocked') default 'Active',
Customer_Notes      tinytext );

Select * From Customer;


Create Table Customer_Orders (
Order_Id Int Primary Key Auto_Increment,
Customer_Id Int,
Order_Date  Date Default (Current_Date),
Order_Amount  Decimal (10,2) not null,
Order_Status   enum ( 'Pending', 'Processing', 'Shipped', 'Cancelled' ) default 'Pending',
Payment_Method enum ( 'Card' , 'Cash', 'UPI' , 'Net Banking'),
Shipping_Address Varchar(200),
Delivery_Pincode  VarChar(6),
Quantity          Int Not Null check (Quantity>0),
Discount          Decimal(10,2) Default 0,
Delivery_Date     Date Null,
Created_at       Timestamp Default (Current_Timestamp) ,
Tracking_Number  Varchar(30) Unique,
Delivery_Status  enum ('Not Dispatched' , 'In Transit' , 'Delivered' , 'Returned') Default 'Not Dispatched',
Order_Notes      Tinytext ,
Foreign Key (Customer_Id) References Customer (ID) on Delete Cascade,
Foreign Key  (Customer_ID) References Customer (ID) on Update Cascade
);

Select * From Customer_orders;