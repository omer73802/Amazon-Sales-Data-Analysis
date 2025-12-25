-- Overall Business KPIs
SELECT
    SUM(TotalAmount) AS TotalRevenue,
    AVG(TotalAmount) AS AvgOrderValue,
    COUNT(*) AS OrdersCount
FROM Amazon;

-- Seller Performance Analysis
SELECT
    SellerID,
    SUM(TotalAmount) AS SellerRevenue,
    AVG(TotalAmount) AS SellerAOV,
    COUNT(*) AS OrdersCount
FROM Amazon
GROUP BY SellerID
ORDER BY SUM(TotalAmount) DESC;

-- Category Performance Analysis
SELECT
    Category,
    SUM(TotalAmount) AS CategoryRevenue,
    AVG(TotalAmount) AS CategoryAOV,
    COUNT(*) AS OrdersCount
FROM Amazon
GROUP BY Category
ORDER BY SUM(TotalAmount) DESC;

-- Discount Impact Analysis
SELECT
    Discount,
    SUM(TotalAmount) AS DiscountRevenue,
    AVG(TotalAmount) AS DiscountAOV,
    COUNT(*) AS OrdersCount
FROM Amazon
GROUP BY Discount
ORDER BY Discount;
