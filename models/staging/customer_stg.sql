select
    customerID,
    FirstName,
    LastName,
    Email,
    Phone,
    Address,
    City,
    State,
    Zipcode,
    Update_at,
    CONCAT (FirstName, '', LastName) AS customerName
FROM
    LI_LANDING.CUSTOMERS