
USE [NorthWind]
GO

/****** Object:  StoredProcedure [proc_CategoriesLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CategoriesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CategoriesLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_CategoriesLoadByPrimaryKey]
(
	@CategoryID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CategoryID],
		[CategoryName],
		[Description],
		[Picture]
	FROM [Categories]
	WHERE
		([CategoryID] = @CategoryID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CategoriesLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CategoriesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CategoriesLoadAll];
GO

CREATE PROCEDURE [proc_CategoriesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CategoryID],
		[CategoryName],
		[Description],
		[Picture]
	FROM [Categories]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CategoriesUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CategoriesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CategoriesUpdate];
GO

CREATE PROCEDURE [proc_CategoriesUpdate]
(
	@CategoryID int,
	@CategoryName nvarchar(15),
	@Description ntext = NULL,
	@Picture image = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Categories]
	SET
		[CategoryName] = @CategoryName,
		[Description] = @Description,
		[Picture] = @Picture
	WHERE
		[CategoryID] = @CategoryID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_CategoriesInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CategoriesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CategoriesInsert];
GO

CREATE PROCEDURE [proc_CategoriesInsert]
(
	@CategoryID int = NULL output,
	@CategoryName nvarchar(15),
	@Description ntext = NULL,
	@Picture image = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Categories]
	(
		[CategoryName],
		[Description],
		[Picture]
	)
	VALUES
	(
		@CategoryName,
		@Description,
		@Picture
	)

	SET @Err = @@Error

	SELECT @CategoryID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CategoriesDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CategoriesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CategoriesDelete];
GO

CREATE PROCEDURE [proc_CategoriesDelete]
(
	@CategoryID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Categories]
	WHERE
		[CategoryID] = @CategoryID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CategoriesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CategoriesDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomerCustomerDemoLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomerCustomerDemoLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomerCustomerDemoLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_CustomerCustomerDemoLoadByPrimaryKey]
(
	@CustomerID nchar(5),
	@CustomerTypeID nchar(10)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CustomerID],
		[CustomerTypeID]
	FROM [CustomerCustomerDemo]
	WHERE
		([CustomerID] = @CustomerID) AND
		([CustomerTypeID] = @CustomerTypeID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomerCustomerDemoLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomerCustomerDemoLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomerCustomerDemoLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomerCustomerDemoLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomerCustomerDemoLoadAll];
GO

CREATE PROCEDURE [proc_CustomerCustomerDemoLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CustomerID],
		[CustomerTypeID]
	FROM [CustomerCustomerDemo]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomerCustomerDemoLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomerCustomerDemoLoadAll Error on Creation'
GO

-------------------------------------------
-- NO UPDATE Stored Procedure Generated    
-- All Columns are part of the Primary key 
-------------------------------------------


/****** Object:  StoredProcedure [proc_CustomerCustomerDemoInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomerCustomerDemoInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomerCustomerDemoInsert];
GO

CREATE PROCEDURE [proc_CustomerCustomerDemoInsert]
(
	@CustomerID nchar(5),
	@CustomerTypeID nchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [CustomerCustomerDemo]
	(
		[CustomerID],
		[CustomerTypeID]
	)
	VALUES
	(
		@CustomerID,
		@CustomerTypeID
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomerCustomerDemoInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomerCustomerDemoInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomerCustomerDemoDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomerCustomerDemoDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomerCustomerDemoDelete];
GO

CREATE PROCEDURE [proc_CustomerCustomerDemoDelete]
(
	@CustomerID nchar(5),
	@CustomerTypeID nchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [CustomerCustomerDemo]
	WHERE
		[CustomerID] = @CustomerID AND
		[CustomerTypeID] = @CustomerTypeID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomerCustomerDemoDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomerCustomerDemoDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomerDemographicsLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomerDemographicsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomerDemographicsLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_CustomerDemographicsLoadByPrimaryKey]
(
	@CustomerTypeID nchar(10)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CustomerTypeID],
		[CustomerDesc]
	FROM [CustomerDemographics]
	WHERE
		([CustomerTypeID] = @CustomerTypeID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomerDemographicsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomerDemographicsLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomerDemographicsLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomerDemographicsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomerDemographicsLoadAll];
GO

CREATE PROCEDURE [proc_CustomerDemographicsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CustomerTypeID],
		[CustomerDesc]
	FROM [CustomerDemographics]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomerDemographicsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomerDemographicsLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomerDemographicsUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomerDemographicsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomerDemographicsUpdate];
GO

CREATE PROCEDURE [proc_CustomerDemographicsUpdate]
(
	@CustomerTypeID nchar(10),
	@CustomerDesc ntext = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [CustomerDemographics]
	SET
		[CustomerDesc] = @CustomerDesc
	WHERE
		[CustomerTypeID] = @CustomerTypeID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomerDemographicsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomerDemographicsUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_CustomerDemographicsInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomerDemographicsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomerDemographicsInsert];
GO

CREATE PROCEDURE [proc_CustomerDemographicsInsert]
(
	@CustomerTypeID nchar(10),
	@CustomerDesc ntext = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [CustomerDemographics]
	(
		[CustomerTypeID],
		[CustomerDesc]
	)
	VALUES
	(
		@CustomerTypeID,
		@CustomerDesc
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomerDemographicsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomerDemographicsInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomerDemographicsDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomerDemographicsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomerDemographicsDelete];
GO

CREATE PROCEDURE [proc_CustomerDemographicsDelete]
(
	@CustomerTypeID nchar(10)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [CustomerDemographics]
	WHERE
		[CustomerTypeID] = @CustomerTypeID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomerDemographicsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomerDemographicsDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomersLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomersLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomersLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_CustomersLoadByPrimaryKey]
(
	@CustomerID nchar(5)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CustomerID],
		[CompanyName],
		[ContactName],
		[ContactTitle],
		[Address],
		[City],
		[Region],
		[PostalCode],
		[Country],
		[Phone],
		[Fax]
	FROM [Customers]
	WHERE
		([CustomerID] = @CustomerID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomersLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomersLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomersLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomersLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomersLoadAll];
GO

CREATE PROCEDURE [proc_CustomersLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CustomerID],
		[CompanyName],
		[ContactName],
		[ContactTitle],
		[Address],
		[City],
		[Region],
		[PostalCode],
		[Country],
		[Phone],
		[Fax]
	FROM [Customers]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomersLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomersLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomersUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomersUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomersUpdate];
GO

CREATE PROCEDURE [proc_CustomersUpdate]
(
	@CustomerID nchar(5),
	@CompanyName nvarchar(40),
	@ContactName nvarchar(30) = NULL,
	@ContactTitle nvarchar(30) = NULL,
	@Address nvarchar(60) = NULL,
	@City nvarchar(15) = NULL,
	@Region nvarchar(15) = NULL,
	@PostalCode nvarchar(10) = NULL,
	@Country nvarchar(15) = NULL,
	@Phone nvarchar(24) = NULL,
	@Fax nvarchar(24) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Customers]
	SET
		[CompanyName] = @CompanyName,
		[ContactName] = @ContactName,
		[ContactTitle] = @ContactTitle,
		[Address] = @Address,
		[City] = @City,
		[Region] = @Region,
		[PostalCode] = @PostalCode,
		[Country] = @Country,
		[Phone] = @Phone,
		[Fax] = @Fax
	WHERE
		[CustomerID] = @CustomerID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomersUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomersUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_CustomersInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomersInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomersInsert];
GO

CREATE PROCEDURE [proc_CustomersInsert]
(
	@CustomerID nchar(5),
	@CompanyName nvarchar(40),
	@ContactName nvarchar(30) = NULL,
	@ContactTitle nvarchar(30) = NULL,
	@Address nvarchar(60) = NULL,
	@City nvarchar(15) = NULL,
	@Region nvarchar(15) = NULL,
	@PostalCode nvarchar(10) = NULL,
	@Country nvarchar(15) = NULL,
	@Phone nvarchar(24) = NULL,
	@Fax nvarchar(24) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Customers]
	(
		[CustomerID],
		[CompanyName],
		[ContactName],
		[ContactTitle],
		[Address],
		[City],
		[Region],
		[PostalCode],
		[Country],
		[Phone],
		[Fax]
	)
	VALUES
	(
		@CustomerID,
		@CompanyName,
		@ContactName,
		@ContactTitle,
		@Address,
		@City,
		@Region,
		@PostalCode,
		@Country,
		@Phone,
		@Fax
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomersInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomersInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CustomersDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CustomersDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CustomersDelete];
GO

CREATE PROCEDURE [proc_CustomersDelete]
(
	@CustomerID nchar(5)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Customers]
	WHERE
		[CustomerID] = @CustomerID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CustomersDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CustomersDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EmployeesLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EmployeesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EmployeesLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_EmployeesLoadByPrimaryKey]
(
	@EmployeeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EmployeeID],
		[LastName],
		[FirstName],
		[Title],
		[TitleOfCourtesy],
		[BirthDate],
		[HireDate],
		[Address],
		[City],
		[Region],
		[PostalCode],
		[Country],
		[HomePhone],
		[Extension],
		[Photo],
		[Notes],
		[ReportsTo],
		[PhotoPath]
	FROM [Employees]
	WHERE
		([EmployeeID] = @EmployeeID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EmployeesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_EmployeesLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EmployeesLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EmployeesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EmployeesLoadAll];
GO

CREATE PROCEDURE [proc_EmployeesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EmployeeID],
		[LastName],
		[FirstName],
		[Title],
		[TitleOfCourtesy],
		[BirthDate],
		[HireDate],
		[Address],
		[City],
		[Region],
		[PostalCode],
		[Country],
		[HomePhone],
		[Extension],
		[Photo],
		[Notes],
		[ReportsTo],
		[PhotoPath]
	FROM [Employees]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EmployeesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_EmployeesLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EmployeesUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EmployeesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EmployeesUpdate];
GO

CREATE PROCEDURE [proc_EmployeesUpdate]
(
	@EmployeeID int,
	@LastName nvarchar(20),
	@FirstName nvarchar(10),
	@Title nvarchar(30) = NULL,
	@TitleOfCourtesy nvarchar(25) = NULL,
	@BirthDate datetime = NULL,
	@HireDate datetime = NULL,
	@Address nvarchar(60) = NULL,
	@City nvarchar(15) = NULL,
	@Region nvarchar(15) = NULL,
	@PostalCode nvarchar(10) = NULL,
	@Country nvarchar(15) = NULL,
	@HomePhone nvarchar(24) = NULL,
	@Extension nvarchar(4) = NULL,
	@Photo image = NULL,
	@Notes ntext = NULL,
	@ReportsTo int = NULL,
	@PhotoPath nvarchar(255) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Employees]
	SET
		[LastName] = @LastName,
		[FirstName] = @FirstName,
		[Title] = @Title,
		[TitleOfCourtesy] = @TitleOfCourtesy,
		[BirthDate] = @BirthDate,
		[HireDate] = @HireDate,
		[Address] = @Address,
		[City] = @City,
		[Region] = @Region,
		[PostalCode] = @PostalCode,
		[Country] = @Country,
		[HomePhone] = @HomePhone,
		[Extension] = @Extension,
		[Photo] = @Photo,
		[Notes] = @Notes,
		[ReportsTo] = @ReportsTo,
		[PhotoPath] = @PhotoPath
	WHERE
		[EmployeeID] = @EmployeeID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EmployeesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_EmployeesUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_EmployeesInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EmployeesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EmployeesInsert];
GO

CREATE PROCEDURE [proc_EmployeesInsert]
(
	@EmployeeID int = NULL output,
	@LastName nvarchar(20),
	@FirstName nvarchar(10),
	@Title nvarchar(30) = NULL,
	@TitleOfCourtesy nvarchar(25) = NULL,
	@BirthDate datetime = NULL,
	@HireDate datetime = NULL,
	@Address nvarchar(60) = NULL,
	@City nvarchar(15) = NULL,
	@Region nvarchar(15) = NULL,
	@PostalCode nvarchar(10) = NULL,
	@Country nvarchar(15) = NULL,
	@HomePhone nvarchar(24) = NULL,
	@Extension nvarchar(4) = NULL,
	@Photo image = NULL,
	@Notes ntext = NULL,
	@ReportsTo int = NULL,
	@PhotoPath nvarchar(255) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Employees]
	(
		[LastName],
		[FirstName],
		[Title],
		[TitleOfCourtesy],
		[BirthDate],
		[HireDate],
		[Address],
		[City],
		[Region],
		[PostalCode],
		[Country],
		[HomePhone],
		[Extension],
		[Photo],
		[Notes],
		[ReportsTo],
		[PhotoPath]
	)
	VALUES
	(
		@LastName,
		@FirstName,
		@Title,
		@TitleOfCourtesy,
		@BirthDate,
		@HireDate,
		@Address,
		@City,
		@Region,
		@PostalCode,
		@Country,
		@HomePhone,
		@Extension,
		@Photo,
		@Notes,
		@ReportsTo,
		@PhotoPath
	)

	SET @Err = @@Error

	SELECT @EmployeeID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EmployeesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_EmployeesInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EmployeesDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EmployeesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EmployeesDelete];
GO

CREATE PROCEDURE [proc_EmployeesDelete]
(
	@EmployeeID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Employees]
	WHERE
		[EmployeeID] = @EmployeeID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EmployeesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_EmployeesDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EmployeeTerritoriesLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EmployeeTerritoriesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EmployeeTerritoriesLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_EmployeeTerritoriesLoadByPrimaryKey]
(
	@EmployeeID int,
	@TerritoryID nvarchar(20)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EmployeeID],
		[TerritoryID]
	FROM [EmployeeTerritories]
	WHERE
		([EmployeeID] = @EmployeeID) AND
		([TerritoryID] = @TerritoryID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EmployeeTerritoriesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_EmployeeTerritoriesLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EmployeeTerritoriesLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EmployeeTerritoriesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EmployeeTerritoriesLoadAll];
GO

CREATE PROCEDURE [proc_EmployeeTerritoriesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EmployeeID],
		[TerritoryID]
	FROM [EmployeeTerritories]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EmployeeTerritoriesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_EmployeeTerritoriesLoadAll Error on Creation'
GO

-------------------------------------------
-- NO UPDATE Stored Procedure Generated    
-- All Columns are part of the Primary key 
-------------------------------------------


/****** Object:  StoredProcedure [proc_EmployeeTerritoriesInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EmployeeTerritoriesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EmployeeTerritoriesInsert];
GO

CREATE PROCEDURE [proc_EmployeeTerritoriesInsert]
(
	@EmployeeID int,
	@TerritoryID nvarchar(20)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [EmployeeTerritories]
	(
		[EmployeeID],
		[TerritoryID]
	)
	VALUES
	(
		@EmployeeID,
		@TerritoryID
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EmployeeTerritoriesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_EmployeeTerritoriesInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_EmployeeTerritoriesDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_EmployeeTerritoriesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_EmployeeTerritoriesDelete];
GO

CREATE PROCEDURE [proc_EmployeeTerritoriesDelete]
(
	@EmployeeID int,
	@TerritoryID nvarchar(20)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [EmployeeTerritories]
	WHERE
		[EmployeeID] = @EmployeeID AND
		[TerritoryID] = @TerritoryID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_EmployeeTerritoriesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_EmployeeTerritoriesDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Order DetailsLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Order DetailsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Order DetailsLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_Order DetailsLoadByPrimaryKey]
(
	@OrderID int,
	@ProductID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[OrderID],
		[ProductID],
		[UnitPrice],
		[Quantity],
		[Discount]
	FROM [Order Details]
	WHERE
		([OrderID] = @OrderID) AND
		([ProductID] = @ProductID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Order DetailsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_Order DetailsLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Order DetailsLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Order DetailsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Order DetailsLoadAll];
GO

CREATE PROCEDURE [proc_Order DetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[OrderID],
		[ProductID],
		[UnitPrice],
		[Quantity],
		[Discount]
	FROM [Order Details]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Order DetailsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_Order DetailsLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Order DetailsUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Order DetailsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Order DetailsUpdate];
GO

CREATE PROCEDURE [proc_Order DetailsUpdate]
(
	@OrderID int,
	@ProductID int,
	@UnitPrice money,
	@Quantity smallint,
	@Discount real
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Order Details]
	SET
		[UnitPrice] = @UnitPrice,
		[Quantity] = @Quantity,
		[Discount] = @Discount
	WHERE
		[OrderID] = @OrderID
	AND	[ProductID] = @ProductID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Order DetailsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_Order DetailsUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_Order DetailsInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Order DetailsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Order DetailsInsert];
GO

CREATE PROCEDURE [proc_Order DetailsInsert]
(
	@OrderID int,
	@ProductID int,
	@UnitPrice money,
	@Quantity smallint,
	@Discount real
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Order Details]
	(
		[OrderID],
		[ProductID],
		[UnitPrice],
		[Quantity],
		[Discount]
	)
	VALUES
	(
		@OrderID,
		@ProductID,
		@UnitPrice,
		@Quantity,
		@Discount
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Order DetailsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_Order DetailsInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Order DetailsDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Order DetailsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Order DetailsDelete];
GO

CREATE PROCEDURE [proc_Order DetailsDelete]
(
	@OrderID int,
	@ProductID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Order Details]
	WHERE
		[OrderID] = @OrderID AND
		[ProductID] = @ProductID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Order DetailsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_Order DetailsDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_OrdersLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_OrdersLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_OrdersLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_OrdersLoadByPrimaryKey]
(
	@OrderID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[OrderID],
		[CustomerID],
		[EmployeeID],
		[OrderDate],
		[RequiredDate],
		[ShippedDate],
		[ShipVia],
		[Freight],
		[ShipName],
		[ShipAddress],
		[ShipCity],
		[ShipRegion],
		[ShipPostalCode],
		[ShipCountry]
	FROM [Orders]
	WHERE
		([OrderID] = @OrderID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_OrdersLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_OrdersLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_OrdersLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_OrdersLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_OrdersLoadAll];
GO

CREATE PROCEDURE [proc_OrdersLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[OrderID],
		[CustomerID],
		[EmployeeID],
		[OrderDate],
		[RequiredDate],
		[ShippedDate],
		[ShipVia],
		[Freight],
		[ShipName],
		[ShipAddress],
		[ShipCity],
		[ShipRegion],
		[ShipPostalCode],
		[ShipCountry]
	FROM [Orders]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_OrdersLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_OrdersLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_OrdersUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_OrdersUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_OrdersUpdate];
GO

CREATE PROCEDURE [proc_OrdersUpdate]
(
	@OrderID int,
	@CustomerID nchar(5) = NULL,
	@EmployeeID int = NULL,
	@OrderDate datetime = NULL,
	@RequiredDate datetime = NULL,
	@ShippedDate datetime = NULL,
	@ShipVia int = NULL,
	@Freight money = NULL,
	@ShipName nvarchar(40) = NULL,
	@ShipAddress nvarchar(60) = NULL,
	@ShipCity nvarchar(15) = NULL,
	@ShipRegion nvarchar(15) = NULL,
	@ShipPostalCode nvarchar(10) = NULL,
	@ShipCountry nvarchar(15) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Orders]
	SET
		[CustomerID] = @CustomerID,
		[EmployeeID] = @EmployeeID,
		[OrderDate] = @OrderDate,
		[RequiredDate] = @RequiredDate,
		[ShippedDate] = @ShippedDate,
		[ShipVia] = @ShipVia,
		[Freight] = @Freight,
		[ShipName] = @ShipName,
		[ShipAddress] = @ShipAddress,
		[ShipCity] = @ShipCity,
		[ShipRegion] = @ShipRegion,
		[ShipPostalCode] = @ShipPostalCode,
		[ShipCountry] = @ShipCountry
	WHERE
		[OrderID] = @OrderID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_OrdersUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_OrdersUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_OrdersInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_OrdersInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_OrdersInsert];
GO

CREATE PROCEDURE [proc_OrdersInsert]
(
	@OrderID int = NULL output,
	@CustomerID nchar(5) = NULL,
	@EmployeeID int = NULL,
	@OrderDate datetime = NULL,
	@RequiredDate datetime = NULL,
	@ShippedDate datetime = NULL,
	@ShipVia int = NULL,
	@Freight money = NULL,
	@ShipName nvarchar(40) = NULL,
	@ShipAddress nvarchar(60) = NULL,
	@ShipCity nvarchar(15) = NULL,
	@ShipRegion nvarchar(15) = NULL,
	@ShipPostalCode nvarchar(10) = NULL,
	@ShipCountry nvarchar(15) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Orders]
	(
		[CustomerID],
		[EmployeeID],
		[OrderDate],
		[RequiredDate],
		[ShippedDate],
		[ShipVia],
		[Freight],
		[ShipName],
		[ShipAddress],
		[ShipCity],
		[ShipRegion],
		[ShipPostalCode],
		[ShipCountry]
	)
	VALUES
	(
		@CustomerID,
		@EmployeeID,
		@OrderDate,
		@RequiredDate,
		@ShippedDate,
		@ShipVia,
		@Freight,
		@ShipName,
		@ShipAddress,
		@ShipCity,
		@ShipRegion,
		@ShipPostalCode,
		@ShipCountry
	)

	SET @Err = @@Error

	SELECT @OrderID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_OrdersInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_OrdersInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_OrdersDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_OrdersDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_OrdersDelete];
GO

CREATE PROCEDURE [proc_OrdersDelete]
(
	@OrderID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Orders]
	WHERE
		[OrderID] = @OrderID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_OrdersDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_OrdersDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ProductsLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ProductsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ProductsLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_ProductsLoadByPrimaryKey]
(
	@ProductID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProductID],
		[ProductName],
		[SupplierID],
		[CategoryID],
		[QuantityPerUnit],
		[UnitPrice],
		[UnitsInStock],
		[UnitsOnOrder],
		[ReorderLevel],
		[Discontinued]
	FROM [Products]
	WHERE
		([ProductID] = @ProductID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductsLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ProductsLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ProductsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ProductsLoadAll];
GO

CREATE PROCEDURE [proc_ProductsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProductID],
		[ProductName],
		[SupplierID],
		[CategoryID],
		[QuantityPerUnit],
		[UnitPrice],
		[UnitsInStock],
		[UnitsOnOrder],
		[ReorderLevel],
		[Discontinued]
	FROM [Products]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductsLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ProductsUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ProductsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ProductsUpdate];
GO

CREATE PROCEDURE [proc_ProductsUpdate]
(
	@ProductID int,
	@ProductName nvarchar(40),
	@SupplierID int = NULL,
	@CategoryID int = NULL,
	@QuantityPerUnit nvarchar(20) = NULL,
	@UnitPrice money = NULL,
	@UnitsInStock smallint = NULL,
	@UnitsOnOrder smallint = NULL,
	@ReorderLevel smallint = NULL,
	@Discontinued bit
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Products]
	SET
		[ProductName] = @ProductName,
		[SupplierID] = @SupplierID,
		[CategoryID] = @CategoryID,
		[QuantityPerUnit] = @QuantityPerUnit,
		[UnitPrice] = @UnitPrice,
		[UnitsInStock] = @UnitsInStock,
		[UnitsOnOrder] = @UnitsOnOrder,
		[ReorderLevel] = @ReorderLevel,
		[Discontinued] = @Discontinued
	WHERE
		[ProductID] = @ProductID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductsUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_ProductsInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ProductsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ProductsInsert];
GO

CREATE PROCEDURE [proc_ProductsInsert]
(
	@ProductID int = NULL output,
	@ProductName nvarchar(40),
	@SupplierID int = NULL,
	@CategoryID int = NULL,
	@QuantityPerUnit nvarchar(20) = NULL,
	@UnitPrice money = NULL,
	@UnitsInStock smallint = NULL,
	@UnitsOnOrder smallint = NULL,
	@ReorderLevel smallint = NULL,
	@Discontinued bit
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Products]
	(
		[ProductName],
		[SupplierID],
		[CategoryID],
		[QuantityPerUnit],
		[UnitPrice],
		[UnitsInStock],
		[UnitsOnOrder],
		[ReorderLevel],
		[Discontinued]
	)
	VALUES
	(
		@ProductName,
		@SupplierID,
		@CategoryID,
		@QuantityPerUnit,
		@UnitPrice,
		@UnitsInStock,
		@UnitsOnOrder,
		@ReorderLevel,
		@Discontinued
	)

	SET @Err = @@Error

	SELECT @ProductID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductsInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ProductsDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ProductsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ProductsDelete];
GO

CREATE PROCEDURE [proc_ProductsDelete]
(
	@ProductID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Products]
	WHERE
		[ProductID] = @ProductID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ProductsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_ProductsDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_RegionLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RegionLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RegionLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_RegionLoadByPrimaryKey]
(
	@RegionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[RegionID],
		[RegionDescription]
	FROM [Region]
	WHERE
		([RegionID] = @RegionID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RegionLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_RegionLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_RegionLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RegionLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RegionLoadAll];
GO

CREATE PROCEDURE [proc_RegionLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[RegionID],
		[RegionDescription]
	FROM [Region]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RegionLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_RegionLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_RegionUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RegionUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RegionUpdate];
GO

CREATE PROCEDURE [proc_RegionUpdate]
(
	@RegionID int,
	@RegionDescription nchar(50)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Region]
	SET
		[RegionDescription] = @RegionDescription
	WHERE
		[RegionID] = @RegionID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RegionUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_RegionUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_RegionInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RegionInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RegionInsert];
GO

CREATE PROCEDURE [proc_RegionInsert]
(
	@RegionID int,
	@RegionDescription nchar(50)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Region]
	(
		[RegionID],
		[RegionDescription]
	)
	VALUES
	(
		@RegionID,
		@RegionDescription
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RegionInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_RegionInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_RegionDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RegionDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RegionDelete];
GO

CREATE PROCEDURE [proc_RegionDelete]
(
	@RegionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Region]
	WHERE
		[RegionID] = @RegionID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RegionDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_RegionDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ShippersLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ShippersLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ShippersLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_ShippersLoadByPrimaryKey]
(
	@ShipperID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ShipperID],
		[CompanyName],
		[Phone]
	FROM [Shippers]
	WHERE
		([ShipperID] = @ShipperID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ShippersLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_ShippersLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ShippersLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ShippersLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ShippersLoadAll];
GO

CREATE PROCEDURE [proc_ShippersLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ShipperID],
		[CompanyName],
		[Phone]
	FROM [Shippers]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ShippersLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_ShippersLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ShippersUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ShippersUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ShippersUpdate];
GO

CREATE PROCEDURE [proc_ShippersUpdate]
(
	@ShipperID int,
	@CompanyName nvarchar(40),
	@Phone nvarchar(24) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Shippers]
	SET
		[CompanyName] = @CompanyName,
		[Phone] = @Phone
	WHERE
		[ShipperID] = @ShipperID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ShippersUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_ShippersUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_ShippersInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ShippersInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ShippersInsert];
GO

CREATE PROCEDURE [proc_ShippersInsert]
(
	@ShipperID int = NULL output,
	@CompanyName nvarchar(40),
	@Phone nvarchar(24) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Shippers]
	(
		[CompanyName],
		[Phone]
	)
	VALUES
	(
		@CompanyName,
		@Phone
	)

	SET @Err = @@Error

	SELECT @ShipperID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ShippersInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_ShippersInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_ShippersDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_ShippersDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_ShippersDelete];
GO

CREATE PROCEDURE [proc_ShippersDelete]
(
	@ShipperID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Shippers]
	WHERE
		[ShipperID] = @ShipperID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_ShippersDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_ShippersDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_SuppliersLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_SuppliersLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_SuppliersLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_SuppliersLoadByPrimaryKey]
(
	@SupplierID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SupplierID],
		[CompanyName],
		[ContactName],
		[ContactTitle],
		[Address],
		[City],
		[Region],
		[PostalCode],
		[Country],
		[Phone],
		[Fax],
		[HomePage]
	FROM [Suppliers]
	WHERE
		([SupplierID] = @SupplierID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_SuppliersLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_SuppliersLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_SuppliersLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_SuppliersLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_SuppliersLoadAll];
GO

CREATE PROCEDURE [proc_SuppliersLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SupplierID],
		[CompanyName],
		[ContactName],
		[ContactTitle],
		[Address],
		[City],
		[Region],
		[PostalCode],
		[Country],
		[Phone],
		[Fax],
		[HomePage]
	FROM [Suppliers]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_SuppliersLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_SuppliersLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_SuppliersUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_SuppliersUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_SuppliersUpdate];
GO

CREATE PROCEDURE [proc_SuppliersUpdate]
(
	@SupplierID int,
	@CompanyName nvarchar(40),
	@ContactName nvarchar(30) = NULL,
	@ContactTitle nvarchar(30) = NULL,
	@Address nvarchar(60) = NULL,
	@City nvarchar(15) = NULL,
	@Region nvarchar(15) = NULL,
	@PostalCode nvarchar(10) = NULL,
	@Country nvarchar(15) = NULL,
	@Phone nvarchar(24) = NULL,
	@Fax nvarchar(24) = NULL,
	@HomePage ntext = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Suppliers]
	SET
		[CompanyName] = @CompanyName,
		[ContactName] = @ContactName,
		[ContactTitle] = @ContactTitle,
		[Address] = @Address,
		[City] = @City,
		[Region] = @Region,
		[PostalCode] = @PostalCode,
		[Country] = @Country,
		[Phone] = @Phone,
		[Fax] = @Fax,
		[HomePage] = @HomePage
	WHERE
		[SupplierID] = @SupplierID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_SuppliersUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_SuppliersUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_SuppliersInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_SuppliersInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_SuppliersInsert];
GO

CREATE PROCEDURE [proc_SuppliersInsert]
(
	@SupplierID int = NULL output,
	@CompanyName nvarchar(40),
	@ContactName nvarchar(30) = NULL,
	@ContactTitle nvarchar(30) = NULL,
	@Address nvarchar(60) = NULL,
	@City nvarchar(15) = NULL,
	@Region nvarchar(15) = NULL,
	@PostalCode nvarchar(10) = NULL,
	@Country nvarchar(15) = NULL,
	@Phone nvarchar(24) = NULL,
	@Fax nvarchar(24) = NULL,
	@HomePage ntext = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Suppliers]
	(
		[CompanyName],
		[ContactName],
		[ContactTitle],
		[Address],
		[City],
		[Region],
		[PostalCode],
		[Country],
		[Phone],
		[Fax],
		[HomePage]
	)
	VALUES
	(
		@CompanyName,
		@ContactName,
		@ContactTitle,
		@Address,
		@City,
		@Region,
		@PostalCode,
		@Country,
		@Phone,
		@Fax,
		@HomePage
	)

	SET @Err = @@Error

	SELECT @SupplierID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_SuppliersInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_SuppliersInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_SuppliersDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_SuppliersDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_SuppliersDelete];
GO

CREATE PROCEDURE [proc_SuppliersDelete]
(
	@SupplierID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Suppliers]
	WHERE
		[SupplierID] = @SupplierID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_SuppliersDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_SuppliersDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TerritoriesLoadByPrimaryKey]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TerritoriesLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TerritoriesLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_TerritoriesLoadByPrimaryKey]
(
	@TerritoryID nvarchar(20)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TerritoryID],
		[TerritoryDescription],
		[RegionID]
	FROM [Territories]
	WHERE
		([TerritoryID] = @TerritoryID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TerritoriesLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_TerritoriesLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TerritoriesLoadAll]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TerritoriesLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TerritoriesLoadAll];
GO

CREATE PROCEDURE [proc_TerritoriesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TerritoryID],
		[TerritoryDescription],
		[RegionID]
	FROM [Territories]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TerritoriesLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_TerritoriesLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TerritoriesUpdate]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TerritoriesUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TerritoriesUpdate];
GO

CREATE PROCEDURE [proc_TerritoriesUpdate]
(
	@TerritoryID nvarchar(20),
	@TerritoryDescription nchar(50),
	@RegionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Territories]
	SET
		[TerritoryDescription] = @TerritoryDescription,
		[RegionID] = @RegionID
	WHERE
		[TerritoryID] = @TerritoryID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TerritoriesUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_TerritoriesUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_TerritoriesInsert]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TerritoriesInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TerritoriesInsert];
GO

CREATE PROCEDURE [proc_TerritoriesInsert]
(
	@TerritoryID nvarchar(20),
	@TerritoryDescription nchar(50),
	@RegionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Territories]
	(
		[TerritoryID],
		[TerritoryDescription],
		[RegionID]
	)
	VALUES
	(
		@TerritoryID,
		@TerritoryDescription,
		@RegionID
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TerritoriesInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_TerritoriesInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TerritoriesDelete]    Script Date: 12/27/2016 1:20:41 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TerritoriesDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TerritoriesDelete];
GO

CREATE PROCEDURE [proc_TerritoriesDelete]
(
	@TerritoryID nvarchar(20)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Territories]
	WHERE
		[TerritoryID] = @TerritoryID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TerritoriesDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_TerritoriesDelete Error on Creation'
GO
