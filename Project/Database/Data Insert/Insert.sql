2186022368

INSERT dbo.Zip_Code (zip_code_id, city, state_code, zip_code, street)
    VALUES (1, 'San Diego', 'CA', 92101, 'Front St.')
GO

INSERT dbo.Zip_Code (zip_code_id, city, state_code, zip_code, street)
    VALUES (2, 'La Canada', 'CA', 91011, 'Mission St.')
GO

INSERT dbo.Zip_Code (zip_code_id, city, state_code, zip_code, street)
    VALUES (3, 'Montrose', 'CA', 91021, 'Hubert Dr.')
GO

INSERT dbo.Zip_Code (zip_code_id, city, state_code, zip_code, street)
    VALUES (4, 'Azusa', 'CA', 91072, 'Rabbit St.')
GO

INSERT dbo.Zip_Code (zip_code_id, city, state_code, zip_code, street)
    VALUES (5, 'Boise', 'ID', 92101, 'Holmes St.')
GO

---
INSERT dbo.Company (company_id, company_name, zip_code_id)
    VALUES (1, 'McDonalds', 1)
GO

INSERT dbo.Company (company_id, company_name, zip_code_id)
    VALUES (2, 'Homegoods', 2)
GO

INSERT dbo.Company (company_id, company_name, zip_code_id)
    VALUES (3, 'Montrose Flower Shop', 3)
GO

INSERT dbo.Company (company_id, company_name, zip_code_id)
    VALUES (4, 'Azusa Pet Store', 4)
GO

INSERT dbo.Company (company_id, company_name, zip_code_id)
    VALUES (5, 'Boise Potato Farm', 5)
GO
----
INSERT dbo.Phone (phone_id, phone_num, phone_type)
	VALUES (1,6267654372, 'cell')
GO

INSERT dbo.Phone (phone_id, phone_num, phone_type)
	VALUES (2,6268763482, 'cell')
GO

INSERT dbo.Phone (phone_id, phone_num, phone_type)
	VALUES (3,3172371882, 'work')
GO

INSERT dbo.Phone (phone_id, phone_num, phone_type)
	VALUES (4,8189283954, 'work')
GO

INSERT dbo.Phone (phone_id, phone_num, phone_type)
	VALUES (5,7128769908, 'cell')
GO

---
INSERT dbo.Feature (feature_id, feature_num, feature_desc)
	VALUES (1, 23, 'login module')
GO

INSERT dbo.Feature (feature_id, feature_num, feature_desc)
	VALUES (2, 24, 'patient registration')
GO

INSERT dbo.Feature (feature_id, feature_num, feature_desc)
	VALUES (3, 25, 'patient profile')
GO

INSERT dbo.Feature (feature_id, feature_num, feature_desc)
	VALUES (4, 26, 'patient release form')
GO

INSERT dbo.Feature (feature_id, feature_num, feature_desc)
	VALUES (5, 27, 'physician profile')
GO
---
INSERT dbo.Feature (feature_id, feature_num, feature_desc)
	VALUES (1,6267654372, cell)
GO

----
create table Branch
(
  versions_id int,
  dev_release_id int,
  cust_release_id int,
  CONSTRAINT branch_pk PRIMARY KEY (versions_id, dev_release_id, cust_release_id),
  CONSTRAINT FK_Versions 
      FOREIGN KEY (versions_id) REFERENCES Versions (versions_id),
  CONSTRAINT FK_Dev_Release 
      FOREIGN KEY (dev_release_id) REFERENCES Dev_Release (dev_release_id),
  CONSTRAINT FK_Cust_Release
      FOREIGN KEY (cust_release_id) REFERENCES Cust_Release (cust_release_id)
);
-----
INSERT dbo.Products (products_id, products_name, products_desc)
	VALUES (1,'EHR System', 'health records system for the patients')
GO

INSERT dbo.Products (products_id, products_name, products_desc)
	VALUES (2,'EHR System', 'health records system for the patients')
GO

INSERT dbo.Products (products_id, products_name, products_desc)
	VALUES (3,'EHR System', 'health records system for the patients')
GO

INSERT dbo.Products (products_id, products_name, products_desc)
	VALUES (4,'EHR System', 'health records system for the patients')
GO

INSERT dbo.Products (products_id, products_name, products_desc)
	VALUES (5,'EHR System', 'health records system for the patients')
GO
--
INSERT dbo.Platforms (platforms_id, platforms_name, products_id)
	VALUES (1,'Windows', 1)
GO

INSERT dbo.Platforms (platforms_id, platforms_name, products_id)
	VALUES (2,'Windows', 2)
GO

INSERT dbo.Platforms (platforms_id, platforms_name, products_id)
	VALUES (3,'Linux', 3)
GO

INSERT dbo.Platforms (platforms_id, platforms_name, products_id)
	VALUES (4,'Linux', 4)
GO

INSERT dbo.Platforms (platforms_id, platforms_name, products_id)
	VALUES (5,'Windows', 5)
GO
--
INSERT dbo.Versions (versions_id, versions_num, products_id)
	VALUES (1, 1.1, 1)
GO
INSERT dbo.Versions (versions_id, versions_num, products_id)
	VALUES (2, 1.1, 2)
GO
INSERT dbo.Versions (versions_id, versions_num, products_id)
	VALUES (3, 1.2, 3)
GO

INSERT dbo.Versions (versions_id, versions_num, products_id)
	VALUES (4, 2.1, 4)
GO

INSERT dbo.Versions (versions_id, versions_num, products_id)
	VALUES (5, 2.2, 5)
GO
--
INSERT dbo.Dev_Release (dev_release_id, dev_release_date)
	VALUES (1, '1/1/2000')
GO

INSERT dbo.Dev_Release (dev_release_id, dev_release_date)
	VALUES (2, '1/1/2000')
GO

INSERT dbo.Dev_Release (dev_release_id, dev_release_date)
	VALUES (3, '1/1/2000')
GO

INSERT dbo.Dev_Release (dev_release_id, dev_release_date)
	VALUES (4, '5/1/2000')
GO

INSERT dbo.Dev_Release (dev_release_id, dev_release_date)
	VALUES (5, '6/13/2000')
GO
--
INSERT dbo.Cust_Release (cust_release_id, cust_release_date, cust_release_type, cust_release_num)
	VALUES (1, '1/1/2000', 'new product release', 2)
GO

INSERT dbo.Cust_Release (cust_release_id, cust_release_date, cust_release_type, cust_release_num)
	VALUES (2, '1/1/2000', 'new product release', 3)
GO

INSERT dbo.Cust_Release (cust_release_id, cust_release_date, cust_release_type, cust_release_num)
	VALUES (3, '1/1/2000', 'new product release', 6)
GO

INSERT dbo.Cust_Release (cust_release_id, cust_release_date, cust_release_type, cust_release_num)
	VALUES (4, '5/1/2000', 'new features release', 9)
GO

INSERT dbo.Cust_Release (cust_release_id, cust_release_date, cust_release_type, cust_release_num)
	VALUES (5, '6/13/2000', 'bug-fix release', 21)
GO
--
INSERT dbo.Download (download_id, download_date, cust_release_id)
	VALUES (1, '1/1/2000', 1)
GO

INSERT dbo.Download (download_id, download_date, cust_release_id)
	VALUES (2, '3/18/2000', 3)
GO

INSERT dbo.Download (download_id, download_date, cust_release_id)
	VALUES (3, '3/19/2000', 3)
GO

INSERT dbo.Download (download_id, download_date, cust_release_id)
	VALUES (4, '4/30/2000', 3)
GO

INSERT dbo.Download (download_id, download_date, cust_release_id)
	VALUES (5, '7/19/2000', 5)
GO

---

INSERT dbo.Users (users_id, users_name, first_name, last_name, email, download_id)
	VALUES (1000, 'tibbers12', 'Sarah', 'Marshall', 'mustard12@gmail.com', 1)
GO

INSERT dbo.Users (users_id, users_name, first_name, last_name, email, download_id)
	VALUES (1001, 'piltoversfinest', 'Jayce', 'Hammer', 'MCtime@gmail.com', 2)
GO

INSERT dbo.Users (users_id, users_name, first_name, last_name, email, download_id)
	VALUES (1003, 'tylenolpm', 'John', 'Procter', 'pookynose@gmail.com', 3)
GO

INSERT dbo.Users (users_id, users_name, first_name, last_name, email, download_id)
	VALUES (1004, 'dryeraseblack', 'Viktor', 'Musgrav', 'ggt2341@gmail.com', 4)
GO

INSERT dbo.Users (users_id, users_name, first_name, last_name, email, download_id)
	VALUES (1005, 'makeAgreatagain', 'Donald', 'Trump', 'yopyop432@gmail.com', 5)
GO
--

INSERT dbo.Phone (phone_id, phone_num, phone_type, users_id)
	VALUES (1,6267654372, 'cell', 1000)
GO

INSERT dbo.Phone (phone_id, phone_num, phone_type, users_id)
	VALUES (2,6268763482, 'cell', 1001)
GO

INSERT dbo.Phone (phone_id, phone_num, phone_type, users_id)
	VALUES (3,3172371882, 'work', 1003)
GO

INSERT dbo.Phone (phone_id, phone_num, phone_type, users_id)
	VALUES (4,8189243954, 'work', 1004)
GO

INSERT dbo.Phone (phone_id, phone_num, phone_type, users_id)
	VALUES (5,7128769908, 'cell', 1005)
GO

----
INSERT dbo.Company (company_id, company_name, zip_code_id, users_id)
    VALUES (100, 'Google', 1, 1000)
GO

INSERT dbo.Company (company_id, company_name, zip_code_id, users_id)
    VALUES (101, 'Palantir', 2, 1001)
GO

INSERT dbo.Company (company_id, company_name, zip_code_id, users_id)
    VALUES (103, 'Cisco', 3, 1003)
GO

INSERT dbo.Company (company_id, company_name, zip_code_id, users_id)
    VALUES (104, 'Yahoo', 4, 1004)
GO

INSERT dbo.Company (company_id, company_name, zip_code_id, users_id)
    VALUES (105, 'eBay', 5, 1005)
GO
