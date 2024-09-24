CREATE DATABASE JigitalclouN 
GO
USE JigitalclouN 

CREATE TABLE [MsStaff] (
  StaffID VARCHAR(10) PRIMARY KEY CHECK (StaffID REGEXP 'JCN-S[3-7][1-2][0-9][0-9]'),
  StaffName VARCHAR(50) NOT NULL,
  StaffGender VARCHAR(6) CHECK (StaffGender IN ('Male', 'Female')) NOT NULL,
  StaffEmail VARCHAR(100) NOT NULL CHECK (StaffEmail LIKE '%@%.%'),
  StaffDOB DATE NOT NULL,
  StaffPhoneNumber VARCHAR(20) NOT NULL,
  StaffAddress VARCHAR(100) NOT NULL,
  StaffSalary INT NOT NULL CHECK (StaffSalary > 3500000 AND StaffSalary < 20000000)
);

CREATE TABLE [MsMemory] (
  MemoryID VARCHAR(10) PRIMARY KEY CHECK (MemoryID REGEXP 'JCN-M[3-7][1-2][0-9][0-9]'),
  ProductName VARCHAR(100) NOT NULL,
  ModelCode VARCHAR(50) NOT NULL,
  MemoryPrice INT NOT NULL,
  FrequencyMHz INT CHECK (FrequencyMHz >= 1000 AND FrequencyMHz <= 5000) NOT NULL,
  CapacityGB INT CHECK (CapacityGB >= 1 AND CapacityGB <= 256) NOT NULL
);

CREATE TABLE [MsProcessor] (
  ProcessorID VARCHAR(10) PRIMARY KEY CHECK (ProcessorID REGEXP 'JCN-P[3-7][1-2][0-9][0-9]'),
  ProductName VARCHAR(100) NOT NULL,
  ModelCode VARCHAR(50) NOT NULL,
  ProcessorPrice INT NOT NULL,
  ClockSpeedMHz INT CHECK (ClockSpeedMHz >= 1500 AND ClockSpeedMHz <= 6000) NOT NULL,
  NumberOfCores INT CHECK (NumberOfCores >= 1 AND NumberOfCores <= 24) NOT NULL
);

CREATE TABLE [MsLocation] (
  LocationID VARCHAR(10) CHECK (LocationID REGEXP 'JCN-L[3-7][1-2][0-9][0-9]') PRIMARY KEY,
  City VARCHAR(50) NOT NULL,
  Country VARCHAR(50) NOT NULL,
  ZipCode VARCHAR(10) NOT NULL,
  Latitude DECIMAL(9, 6) CHECK (Latitude >= -90 AND Latitude <= 90) NOT NULL,
  Longitude DECIMAL(9, 6) CHECK (Longitude >= -180 AND Longitude <= 180) NOT NULL
);

CREATE TABLE [MsServer] (
  ServerID VARCHAR(10) PRIMARY KEY,
  MemoryID VARCHAR(10) REFERENCES [MsMemory] ([MemoryID]) NOT NULL,
  ProcessorID VARCHAR(10) REFERENCES [MsProcessor] ([ProcessorID]) NOT NULL,
  LocationID VARCHAR(10) REFERENCES [MsLocation] ([LocationID]) NOT NULL,
  ServerPrice INT NOT NULL
);

CREATE TABLE [MsRentalTransaction] (
  RentalTransactionID VARCHAR(10) PRIMARY KEY CHECK (RentalTransactionID REGEXP 'JCN-R[3-7][1-2][0-9][0-9]') NOT NULL,
  StaffID VARCHAR(10) REFERENCES [MsStaff] ([StaffID]) NOT NULL,
  CustomerID VARCHAR(10) REFERENCES [MsCustomer] ([CustomerID]) NOT NULL,
  ServerID VARCHAR(10) REFERENCES [MsServer] ([ServerID]) NOT NULL,
  StartDate DATE CHECK (StartDate >= '2012-01-01' AND StartDate <= CURRENT_DATE) NOT NULL,
  RentalDuration INT NOT NULL
);

CREATE TABLE [MsSaleTransaction] (
  SalesTransactionID VARCHAR(10) PRIMARY KEY CHECK (SalesTransactionID REGEXP 'JCN-S[0-2][1-2][0-9][0-9]') NOT NULL,
  StaffID VARCHAR(10) REFERENCES [MsStaff] ([StaffID]) NOT NULL,
  CustomerID VARCHAR(10) REFERENCES [MsCustomer] ([CustomerID]) NOT NULL,
  ServerID VARCHAR(10) REFERENCES [MsServer] ([ServerID]) NOT NULL,
  TransactionDate DATE NOT NULL
);

CREATE TABLE [MsCustomer] (
  CustomerID VARCHAR(10) PRIMARY KEY CHECK (CustomerID REGEXP 'JCN-C[3-7][1-2][0-9][0-9]') NOT NULL,
  CustomerName VARCHAR(50) NOT NULL,
  CustomerGender VARCHAR(6) CHECK (CustomerGender IN ('Male', 'Female')) NOT NULL,
  CustomerEmail VARCHAR(100) NOT NULL CHECK (CustomerEmail LIKE '%@%.%'),
  CustomerDOB DATE NOT NULL,
  CustomerPhone VARCHAR(20) NOT NULL,
  CustomerAddress VARCHAR(100) NOT NULL
);