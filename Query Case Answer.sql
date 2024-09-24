-- Question 1
SELECT S.StaffID, S.StaffName, S.StaffGender, S.StaffSalary,
MAX(T.RentalDuration) AS LongestPeriod
FROM MsStaff AS S
JOIN MsRentalTransaction AS T ON S.StaffID = T.StaffID
JOIN MsCustomer AS C ON T.CustomerID = C.CustomerID
WHERE S.StaffSalary < 15000000 AND (CURRENT_DATE - C.CustomerDOB) < (365 * 20)
GROUP BY S.StaffID, S.StaffName, S.StaffGender, S.StaffSalary;

-- Question 2 
SELECT City || ' ' || Country AS Location,
MIN(S.ServerPrice) AS CheapestServerPrice
FROM MsLocation AS L
JOIN MsServer AS S ON L.LocationID = S.LocationID
JOIN MsProcessor AS P ON S.ProcessorID = P.ProcessorID
WHERE P.ClockSpeedMHz > 3000
AND (Latitude >= -30 AND Latitude <= 30)
GROUP BY Location;

-- Question 3 
SELECT Rt.RentalTransactionID AS RentalID,
MAX(Memory.FrequencyMHz) || ' MHz' AS MaxMemoryFrequency,
SUM(Memory.CapacityGB) || ' GB' AS TotalMemoryCapacity
FROM MsRentalTransaction AS Rt
JOIN MsServer AS S ON Rt.ServerID = S.ServerID
JOIN MsMemory AS Memory ON S.MemoryID = Memory.MemoryID
WHERE Rt.StartDate >= '2020-10-01' AND Rt.StartDate <= '2020-12-31'
GROUP BY RentalID;

-- Question 4 
SELECT St.SalesTransactionID AS SaleID,
COUNT(*) AS ServerCount,
AVG(S.ServerPrice) / 1000000 || ' million(s) IDR' AS AverageServerPrice
FROM MsSaleTransaction AS St
JOIN MsServer AS S ON St.ServerID = S.ServerID
WHERE St.TransactionDate >= '2016-01-01' AND St.TransactionDate <= '2020-12-31'
GROUP BY SaleID
HAVING AverageServerPrice > 50;


-- Question 5
SELECT St.SalesTransactionID AS SaleID,
Max(S.ServerPrice) AS MostExpensiveServerPrice,
ROUND(((0.55 * P.ClockSpeedMHz * P.NumberOfCores) + (M.FrequencyMHz * M.CapacityGB * 0.05)) / 143200, 3) AS HardwareRatingIndex
FROM MsSaleTransaction AS St
JOIN MsServer AS S ON St.ServerID = S.ServerID
JOIN MsProcessor AS P ON S.ProcessorID = P.ProcessorID
JOIN MsMemory AS M ON S.MemoryID = M.MemoryID
WHERE St.TransactionDate LIKE '%1' AND (STRFTIME('%Y', St.TransactionDate) + 0) % 2 = 1 AND S.ServerID IN (
SELECT ServerID
FROM MsServer
ORDER BY ServerPrice DESC
LIMIT 10)
GROUP BY SaleID;

-- Question 6
SELECT SUBSTR(P.ProductName, 1, INSTR(P.ProductName, ' ') - 1) AS ProcessorName,
P.NumberOfCores || ' core(s)' AS CoreCount,
P.ProcessorPrice AS ProcessorPriceIDR
FROM MsProcessor P
JOIN MsServer S ON P.ProcessorID = S.ProcessorID
JOIN MsLocation L ON S.LocationID = L.LocationID
WHERE L.Latitude >= 0 AND L.Latitude <= 90
AND P.ProcessorPrice = (SELECT MAX(P1.ProcessorPrice)
FROM MsProcessor P1
JOIN MsServer S1 ON P1.ProcessorID = S1.ProcessorID
JOIN MsLocation L1 ON S1.LocationID = L1.LocationID
WHERE L1.Latitude >= 0 AND L1.Latitude <= 90
AND P1.NumberOfCores = P.NumberOfCores)
GROUP BY ProcessorName, CoreCount, ProcessorPriceIDR;

-- Question 7 
SELECT
SUBSTR(C.CustomerName, 1, 1) || '***** *****' AS HiddenCustomerName,
S.CurrentPurchaseAmount,
S.CountedPurchaseAmount,
(S.TotalSpending / 1000000) || ' point(s)' AS RewardPointsGiven
FROM (SELECT ST.CustomerID,
COUNT(ST.SalesTransactionID) AS CurrentPurchaseAmount,
SUM(SR.ServerPrice) AS TotalSpending,
COUNT(DISTINCT ST.ServerID) AS CountedPurchaseAmount,
ROW_NUMBER() OVER (ORDER BY SUM(SR.ServerPrice) DESC) AS Rank
FROM MsSaleTransaction ST
JOIN MsServer SR ON ST.ServerID = SR.ServerID
WHERE ST.TransactionDate BETWEEN '2015-01-01' AND '2019-12-31'
GROUP BY ST.CustomerID) S
JOIN MsCustomer C ON S.CustomerID = C.CustomerID
WHERE S.Rank <= 10
ORDER BY S.TotalSpending DESC;

-- Question 8
SELECT 'Staff ' || SUBSTR(StaffName, 1, INSTR(StaffName, ' ') - 1) AS StaffName,
REPLACE(StaffEmail, SUBSTR(StaffEmail, INSTR(StaffEmail, '@')), '@jigitalcloun.net') 
AS StaffEmail, StaffAddress,
(StaffSalary / 10000000) || ' million(s) IDR' AS StaffSalary, TotalValue
FROM (SELECT S.StaffName, S.StaffEmail, S.StaffAddress, S.StaffSalary,
SUM(MS.ServerPrice / 120 * RT.RentalDuration) AS TotalValue
FROM MsStaff S
JOIN MsRentalTransaction RT ON S.StaffID = RT.StaffID
JOIN MsServer MS ON RT.ServerID = MS.ServerID
WHERE S.StaffSalary < (SELECT AVG(StaffSalary) FROM MsStaff)
GROUP BY S.StaffID) AS T
WHERE TotalValue > 10000000;

-- Question 9
CREATE VIEW ServerRentalDurationView AS
SELECT REPLACE(ServerID, 'JCN-V', 'No. ') AS Server,
SUM(RentalDuration) || ' month(s)' AS TotalRentalDuration,
MAX(RentalDuration) || ' month(s)' AS MaxSingleRentalDuration
FROM MsRentalTransaction RT
JOIN MsServer S ON RT.ServerID = S.ServerID
JOIN MsLocation L ON S.LocationID = L.LocationID
WHERE L.Latitude < 0 AND L.Latitude >= -90
GROUP BY S.ServerID
HAVING SUM(RentalDuration) > 50;

-- Question 10
CREATE VIEW SoldProcessorPerformanceView AS
SELECT ST.SalesTransactionID AS SaleID,
MIN(ROUND(P.ClockSpeedMHz * P.NumberOfCores * 0.675, 1)) || ' MHz' AS MinEffectiveClock,
MAX(ROUND(P.ClockSpeedMHz * P.NumberOfCores * 0.675, 1)) || ' MHz' AS MaxEffectiveClock
FROM MsSaleTransaction ST
JOIN MsServer S ON ST.ServerID = S.ServerID
JOIN MsProcessor P ON S.ProcessorID = P.ProcessorID
WHERE P.NumberOfCores & (P.NumberOfCores - 1) = 0
GROUP BY ST.SalesTransactionID
HAVING MIN(ROUND(P.ClockSpeedMHz * P.NumberOfCores * 0.675, 1)) >= 10000;