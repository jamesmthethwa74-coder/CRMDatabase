USE LEADCRM_DB;
GO

INSERT INTO CUSTOMER (FIRST_NAME, EMAIL, CONTACT_NUMBER, PREFERENCES)
VALUES 
		('James', 'james@email.com', '0712345678', 'Electronics'),
		('Nokubonga', 'noku@email.com', '0718791678', 'Smartphone'),
		('Dakalo', 'dee@email.com', '0812345678', 'Printer')

UPDATE CUSTOMER
SET PREFERENCES = 'Gaming'
WHERE CUSTOMERID = 1

DELETE FROM CUSTOMER
WHERE CUSTOMERID IN (4, 5, 6);

INSERT INTO PRODUCT_LINE (PRODUCT_NAME, PRODUCT_CATEGORY, PRODUCT_DESCRIPTION, PRODUCT_PRICE)
VALUES
		('Laptop Pro', 'Computers', 'Business laptop', 15999.00),
		('Galaxy Phone', 'Mobile', 'Smartphone device', 12999.00),
		('Wireless Headphones', 'Audio', 'Bluetooth headphones', 1999.00);

INSERT INTO MARKETING_CAMPAIGN (CAMPAIGN_NAME, CAMPAIGN_TYPE, START_DATE, END_DATE, BUDGET)
VALUES
		('Spring Promotion', 'Email', '2026-09-01', '2026-09-30', 15000.00),
		('New Customer Special', 'Social Media', '2026-09-05', '2026-10-05', 25000.00);

INSERT INTO CUSTOMER_CAMPAIGN (CUSTOMERID, CAMPAIGNID, RESPONSE_STATUS)
VALUES
		(1, 1, 'Interested'),
		(2, 1, 'Responded'),
		(3, 2, 'No Response'),
		(1, 2, 'Purchased');

INSERT INTO SERVICE_OFFERING (SERVICE_NAME, SERVICE_TYPE, SERVICE_CATEGORY, SERVICE_PRICE)
VALUES
		('Premium Support', 'Technical', 'Customer Support', 499.00),
		('Device Insurance', 'Protection', 'Insurance', 299.00);

INSERT INTO CUSTOMER_SERVICE_SUPP (SERVICE_TYPE, ISSUE_DESCRIPTION, CUSTOMERID, SERVICEID)
VALUES
		('Technical', 'Laptop not starting', 1, 1),
		('Protection', 'Screen damage', 2, 2),
		('Technical', 'Software issue', 3, 1);

INSERT INTO LEADS (LEADID, LEADSOURCE, LEADSTATUS, DATEGENERATED, CUSTOMERID)
VALUES
		(1001, 'Website', 'New', '2026-09-10', 1),
		(1002, 'Referral', 'Contacted', '2026-09-10', 2),
		(1003, 'Social Media', 'Qualified', '2026-09-11', 3);

INSERT INTO SALESFORCE_AUTOMATION (SALESID, CUSTOMERID, PRODUCTID, OPPORTUNITY_STAGE, EXPECTED_REVENUE, CLOSING_DATE)
VALUES
		(2001, 1, 1, 'Negotiation', 15999.00, '2026-09-25'),
		(2002, 2, 2, 'Proposal', 12999.00, '2026-09-28'),
		(2003, 3, 3, 'Qualified', 1999.00, '2026-10-02');



