INSERT INTO [MsStaff] VALUES
  ('JCN-S3101', 'Agus Santoso', 'Male', 'agus.santoso@gmail.com', '1990-05-15', '081234567890', 'Jalan Merdeka No. 123, Jakarta', 8000000),
  ('JCN-S3102', 'Ni Luh Putu', 'Female', 'nilih.putu@gmail.com', '1985-10-20', '085678912345', 'Jalan Sudirman No. 456, Denpasar', 9000000),
  ('JCN-S3103', 'Budi Prasetyo', 'Male', 'budi.prasetyo@gmail.com', '1995-02-28', '082345678901', 'Jalan Gatot Subroto No. 789, Surabaya', 7000000),
  ('JCN-S3104', 'Siti Rahayu', 'Female', 'siti.rahayu@gmail.com', '1992-08-10', '083456789012', 'Jalan Thamrin No. 321, Bandung', 8500000),
  ('JCN-S3105', 'Hadi Santoso', 'Male', 'hadi.santoso@gmail.com', '1988-12-03', '081234567890', 'Jalan Merdeka No. 654, Yogyakarta', 7500000),
  ('JCN-S3106', 'Rina Widjaja', 'Female', 'rina.widjaja@gmail.com', '1991-06-25', '082345678901', 'Jalan Asia Afrika No. 987, Medan', 9500000),
  ('JCN-S3107', 'Andi Susanto', 'Male', 'andi.susanto@gmail.com', '1987-03-18', '081234567890', 'Jalan Sudirman No. 654, Jakarta', 7000000),
  ('JCN-S3108', 'Sari Indah', 'Female', 'sari.indah@gmail.com', '1994-11-27', '085678912345', 'Jalan Thamrin No. 789, Surabaya', 8000000),
  ('JCN-S3109', 'Joko Wibowo', 'Male', 'joko.wibowo@gmail.com', '1989-07-09', '082345678901', 'Jalan Asia Afrika No. 123, Bandung', 9000000),
  ('JCN-S3110', 'Ani Purnama', 'Female', 'ani.purnama@gmail.com', '1993-02-14', '083456789012', 'Jalan Gatot Subroto No. 456, Medan', 8500000);


INSERT INTO MsMemory VALUES
  ('JCN-M3101', 'Memory Product 1', 'Model Code 1', 100, 2000, 8),
  ('JCN-M3102', 'Memory Product 2', 'Model Code 2', 150, 3000, 16),
  ('JCN-M3103', 'Memory Product 3', 'Model Code 3', 200, 2400, 32),
  ('JCN-M3104', 'Memory Product 4', 'Model Code 4', 120, 3200, 64),
  ('JCN-M3105', 'Memory Product 5', 'Model Code 5', 180, 2800, 128),
  ('JCN-M3106', 'Memory Product 6', 'Model Code 6', 250, 4000, 16),
  ('JCN-M3107', 'Memory Product 7', 'Model Code 7', 300, 3600, 32),
  ('JCN-M3108', 'Memory Product 8', 'Model Code 8', 200, 3200, 64),
  ('JCN-M3109', 'Memory Product 9', 'Model Code 9', 150, 2800, 128),
  ('JCN-M3110', 'Memory Product 10', 'Model Code 10', 100, 2000, 8);

INSERT INTO [MsProcessor] VALUES
  ('JCN-P3101', 'Intel Core i5', 'C1234', 2500000, 3000, 4),
  ('JCN-P3102', 'AMD Ryzen 7', 'R5678', 3500000, 4200, 8),
  ('JCN-P3103', 'Intel Core i7', 'I9876', 4500000, 3600, 8),
  ('JCN-P3104', 'AMD Ryzen 5', 'R4321', 2000000, 3200, 6),
  ('JCN-P3105', 'Intel Core i9', 'I6543', 6000000, 5000, 10),
  ('JCN-P3106', 'AMD Ryzen 9', 'R7890', 8000000, 4400, 12),
  ('JCN-P3107', 'Intel Core i3', 'I0123', 1500000, 2600, 4),
  ('JCN-P3108', 'AMD Ryzen 7', 'R4567', 3000000, 3800, 8),
  ('JCN-P3109', 'Intel Core i5', 'I8901', 2200000, 3100, 6),
  ('JCN-P3110', 'AMD Ryzen 5', 'R2345', 1800000, 3500, 6);


INSERT INTO [MsLocation] VALUES
  ('JCN-L3101', 'Jakarta', 'Indonesia', '12345', -6.200000, 106.816666),
  ('JCN-L3102', 'Denpasar', 'Indonesia', '54321', -8.650000, 115.216667),
  ('JCN-L3103', 'Surabaya', 'Indonesia', '67890', -7.275000, 112.642778),
  ('JCN-L3104', 'Bandung', 'Indonesia', '98765', -6.914864, 107.608238),
  ('JCN-L3105', 'Yogyakarta', 'Indonesia', '54321', -7.795580, 110.369490),
  ('JCN-L3106', 'Medan', 'Indonesia', '13579', 3.595195, 98.672222),
  ('JCN-L3107', 'Jakarta', 'Indonesia', '97531', -6.200000, 106.816666),
  ('JCN-L3108', 'Surabaya', 'Indonesia', '86420', -7.275000, 112.642778),
  ('JCN-L3109', 'Bandung', 'Indonesia', '24680', -6.914864, 107.608238),
  ('JCN-L3110', 'Medan', 'Indonesia', '75319', 3.595195, 98.672222);

INSERT INTO [MsServer] VALUES
  ('JCN-V3101', 'JCN-M3101', 'JCN-P3101', 'JCN-L3101', 8000000),
  ('JCN-V3102', 'JCN-M3102', 'JCN-P3102', 'JCN-L3102', 9000000),
  ('JCN-V3103', 'JCN-M3103', 'JCN-P3103', 'JCN-L3103', 7000000),
  ('JCN-V3104', 'JCN-M3104', 'JCN-P3104', 'JCN-L3104', 8500000),
  ('JCN-V3105', 'JCN-M3105', 'JCN-P3105', 'JCN-L3105', 7500000),
  ('JCN-V3106', 'JCN-M3106', 'JCN-P3106', 'JCN-L3106', 9500000),
  ('JCN-V3107', 'JCN-M3107', 'JCN-P3107', 'JCN-L3107', 7000000),
  ('JCN-V3108', 'JCN-M3108', 'JCN-P3108', 'JCN-L3108', 8000000),
  ('JCN-V3109', 'JCN-M3109', 'JCN-P3109', 'JCN-L3109', 9000000),
  ('JCN-V3110', 'JCN-M3110', 'JCN-P3110', 'JCN-L3110', 8500000);


INSERT INTO [MsCustomer] VALUES
  ('JCN-C3101', 'John Doe', 'Male', 'johndoe@example.com', '1990-05-15', '081234567890', '123 Main St, Jakarta'),
  ('JCN-C3102', 'Jane Smith', 'Female', 'janesmith@example.com', '1985-10-20', '085678912345', '456 Elm St, Denpasar'),
  ('JCN-C3103', 'David Johnson', 'Male', 'davidjohnson@example.com', '1995-02-28', '082345678901', '789 Oak St, Surabaya'),
  ('JCN-C3104', 'Emily Brown', 'Female', 'emilybrown@example.com', '1992-08-10', '083456789012', '321 Maple Ave, Bandung'),
  ('JCN-C3105', 'Michael Lee', 'Male', 'michaellee@example.com', '1988-12-03', '081234567890', '654 Pine St, Yogyakarta'),
  ('JCN-C3106', 'Jessica Wilson', 'Female', 'jessicawilson@example.com', '1991-06-25', '082345678901', '987 Cedar Rd, Medan'),
  ('JCN-C3107', 'Christopher Davis', 'Male', 'christopherdavis@example.com', '1987-03-18', '081234567890', '654 Oak St, Jakarta'),
  ('JCN-C3108', 'Stephanie Martinez', 'Female', 'stephaniemartinez@example.com', '1994-11-27', '085678912345', '789 Maple Ave, Surabaya'),
  ('JCN-C3109', 'Matthew Anderson', 'Male', 'matthewanderson@example.com', '1989-07-09', '082345678901', '123 Pine St, Bandung'),
  ('JCN-C3110', 'Amanda Thomas', 'Female', 'amandathomas@example.com', '1993-02-14', '083456789012', '456 Cedar Rd, Medan');

INSERT INTO [MsRentalTransaction] VALUES
  ('JCN-R0101', 'JCN-S3101', 'JCN-C3101', 'JCN-V3101', '2023-06-01', 7),
  ('JCN-R0102', 'JCN-S3102', 'JCN-C3102', 'JCN-V3102', '2023-06-02', 5),
  ('JCN-R0103', 'JCN-S3103', 'JCN-C3103', 'JCN-V3103', '2023-06-03', 3),
  ('JCN-R0104', 'JCN-S3104', 'JCN-C3104', 'JCN-V3104', '2023-06-04', 2),
  ('JCN-R0105', 'JCN-S3105', 'JCN-C3105', 'JCN-V3105', '2023-06-05', 4),
  ('JCN-R0106', 'JCN-S3106', 'JCN-C3106', 'JCN-V3106', '2023-06-06', 6),
  ('JCN-R0107', 'JCN-S3107', 'JCN-C3107', 'JCN-V3107', '2023-06-07', 4),
  ('JCN-R0108', 'JCN-S3108', 'JCN-C3108', 'JCN-V3108', '2023-06-08', 3),
  ('JCN-R0109', 'JCN-S3109', 'JCN-C3109', 'JCN-V3109', '2023-06-09', 5),
  ('JCN-R0110', 'JCN-S3110', 'JCN-C3110', 'JCN-V3110', '2023-06-10', 7);

INSERT INTO [MsSaleTransaction] VALUES
  ('JCN-S0101', 'JCN-S3101', 'JCN-C3101', 'JCN-V3101', '2023-06-01'),
  ('JCN-S0102', 'JCN-S3102', 'JCN-C3102', 'JCN-V3102', '2023-06-02'),
  ('JCN-S0103', 'JCN-S3103', 'JCN-C3103', 'JCN-V3103', '2023-06-03'),
  ('JCN-S0104', 'JCN-S3104', 'JCN-C3104', 'JCN-V3104', '2023-06-04'),
  ('JCN-S0105', 'JCN-S3105', 'JCN-C3105', 'JCN-V3105', '2023-06-05'),
  ('JCN-S0106', 'JCN-S3106', 'JCN-C3106', 'JCN-V3106', '2023-06-06'),
  ('JCN-S0107', 'JCN-S3107', 'JCN-C3107', 'JCN-V3107', '2023-06-07'),
  ('JCN-S0108', 'JCN-S3108', 'JCN-C3108', 'JCN-V3108', '2023-06-08'),
  ('JCN-S0109', 'JCN-S3109', 'JCN-C3109', 'JCN-V3109', '2023-06-09'),
  ('JCN-S0110', 'JCN-S3110', 'JCN-C3110', 'JCN-V3110', '2023-06-10');


INSERT INTO [PurchaseHeader] VALUES
  ('JCN-PH001', 'JCN-S3101', 'JCN-C3101', '2023-06-01'),
  ('JCN-PH002', 'JCN-S3102', 'JCN-C3102', '2023-06-02'),
  ('JCN-PH003', 'JCN-S3103', 'JCN-C3103', '2023-06-03'),
  ('JCN-PH004', 'JCN-S3104', 'JCN-C3104', '2023-06-04'),
  ('JCN-PH005', 'JCN-S3105', 'JCN-C3105', '2023-06-05'),
  ('JCN-PH006', 'JCN-S3106', 'JCN-C3106', '2023-06-06'),
  ('JCN-PH007', 'JCN-S3107', 'JCN-C3107', '2023-06-07'),
  ('JCN-PH008', 'JCN-S3108', 'JCN-C3108', '2023-06-08'),
  ('JCN-PH009', 'JCN-S3109', 'JCN-C3109', '2023-06-09'),
  ('JCN-PH010', 'JCN-S3110', 'JCN-C3110', '2023-06-10'),
  ('JCN-PH011', 'JCN-S3101', 'JCN-C3101', '2023-06-11'),
  ('JCN-PH012', 'JCN-S3102', 'JCN-C3102', '2023-06-12'),
  ('JCN-PH013', 'JCN-S3103', 'JCN-C3103', '2023-06-13'),
  ('JCN-PH014', 'JCN-S3104', 'JCN-C3104', '2023-06-14'),
  ('JCN-PH015', 'JCN-S3105', 'JCN-C3105', '2023-06-15');

INSERT INTO [PurchaseDetail] VALUES
  ('JCN-PH001', 'JCN-V3101', 'JCN-L3101', '2023-06-01'),
  ('JCN-PH002', 'JCN-V3102', 'JCN-L3102', '2023-06-02'),
  ('JCN-PH003', 'JCN-V3103', 'JCN-L3103', '2023-06-03'),
  ('JCN-PH004', 'JCN-V3104', 'JCN-L3104', '2023-06-04'),
  ('JCN-PH005', 'JCN-V3105', 'JCN-L3105', '2023-06-05'),
  ('JCN-PH006', 'JCN-V3106', 'JCN-L3106', '2023-06-06'),
  ('JCN-PH007', 'JCN-V3107', 'JCN-L3107', '2023-06-07'),
  ('JCN-PH008', 'JCN-V3108', 'JCN-L3108', '2023-06-08'),
  ('JCN-PH009', 'JCN-V3109', 'JCN-L3109', '2023-06-09'),
  ('JCN-PH010', 'JCN-V3110', 'JCN-L3110', '2023-06-10'),
  ('JCN-PH011', 'JCN-V3101', 'JCN-L3101', '2023-06-11'),
  ('JCN-PH012', 'JCN-V3102', 'JCN-L3102', '2023-06-12'),
  ('JCN-PH013', 'JCN-V3103', 'JCN-L3103', '2023-06-13'),
  ('JCN-PH014', 'JCN-V3104', 'JCN-L3104', '2023-06-14'),
  ('JCN-PH015', 'JCN-V3105', 'JCN-L3105', '2023-06-15');


INSERT INTO SalesHeader VALUES
  ('JCN-S9001', 'JCN-C3101', '2023-06-01'),
  ('JCN-S9002', 'JCN-C3102', '2023-06-02'),
  ('JCN-S9003', 'JCN-C3103', '2023-06-03'),
  ('JCN-S9004', 'JCN-C3104', '2023-06-04'),
  ('JCN-S9005', 'JCN-C3105', '2023-06-05'),
  ('JCN-S9006', 'JCN-C3106', '2023-06-06'),
  ('JCN-S9007', 'JCN-C3101', '2023-06-07'),
  ('JCN-S9008', 'JCN-C3102', '2023-06-08'),
  ('JCN-S9009', 'JCN-C3103', '2023-06-09'),
  ('JCN-S9010', 'JCN-C3104', '2023-06-10'),
  ('JCN-S9011', 'JCN-C3105', '2023-06-11'),
  ('JCN-S9012', 'JCN-C3106', '2023-06-12'),
  ('JCN-S9013', 'JCN-C3101', '2023-06-13'),
  ('JCN-S9014', 'JCN-C3102', '2023-06-14'),
  ('JCN-S9015', 'JCN-C3103', '2023-06-15');


INSERT INTO SalesDetail VALUES
  ('JCN-S9001', 'JCN-S3108', '2023-06-01', 7, 8000000),
  ('JCN-S9001', 'JCN-S3102', '2023-06-01', 5, 9000000),
  ('JCN-S9002', 'JCN-S3104', '2023-06-03', 3, 7000000),
  ('JCN-S9002', 'JCN-S3106', '2023-06-03', 4, 8500000),
  ('JCN-S9003', 'JCN-S3103', '2023-06-05', 6, 7500000),
  ('JCN-S9003', 'JCN-S3109', '2023-06-05', 2, 9500000),
  ('JCN-S9004', 'JCN-S3108', '2023-06-07', 7, 8000000),
  ('JCN-S9004', 'JCN-S3102', '2023-06-07', 5, 9000000),
  ('JCN-S9005', 'JCN-S3104', '2023-06-09', 3, 7000000),
  ('JCN-S9005', 'JCN-S3106', '2023-06-09', 4, 8500000),
  ('JCN-S9006', 'JCN-S3103', '2023-06-11', 6, 7500000),
  ('JCN-S9006', 'JCN-S3109', '2023-06-11', 2, 9500000),
  ('JCN-S9007', 'JCN-S3108', '2023-06-13', 7, 8000000),
  ('JCN-S9007', 'JCN-S3102', '2023-06-13', 5, 9000000),
  ('JCN-S9008', 'JCN-S3104', '2023-06-15', 3, 7000000),
  ('JCN-S9008', 'JCN-S3106', '2023-06-15', 4, 8500000),
  ('JCN-S9009', 'JCN-S3103', '2023-06-17', 6, 7500000),
  ('JCN-S9009', 'JCN-S3109', '2023-06-17', 2, 9500000),
  ('JCN-S9010', 'JCN-S3108', '2023-06-19', 7, 8000000),
  ('JCN-S9010', 'JCN-S3102', '2023-06-19', 5, 9000000),
  ('JCN-S9011', 'JCN-S3104', '2023-06-21', 3, 7000000),
  ('JCN-S9011', 'JCN-S3106', '2023-06-21', 4, 8500000),
  ('JCN-S9012', 'JCN-S3103', '2023-06-23', 6, 7500000),
  ('JCN-S9012', 'JCN-S3109', '2023-06-23', 2, 9500000),
  ('JCN-S9013', 'JCN-S3108', '2023-06-25', 7, 8000000),
  ('JCN-S9013', 'JCN-S3102', '2023-06-25', 5, 9000000),
  ('JCN-S9014', 'JCN-S3104', '2023-06-27', 3, 7000000),
  ('JCN-S9014', 'JCN-S3106', '2023-06-27', 4, 8500000),
  ('JCN-S9015', 'JCN-S3103', '2023-06-29', 6, 7500000),
  ('JCN-S9015', 'JCN-S3109', '2023-06-29', 2, 9500000);
