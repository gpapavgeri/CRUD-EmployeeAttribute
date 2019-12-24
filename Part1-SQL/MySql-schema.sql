/****** Object:  Database [dbo] ******/
CREATE DATABASE dbo;

/****** Object:  Table [dbo].[Employee] ******/
CREATE TABLE dbo.Employee(
	EMP_ID CHAR(38) NOT NULL,
	EMP_Name VARCHAR(100) NOT NULL,
	EMP_DateOfHire DATETIME NOT NULL,
	EMP_Supervisor CHAR(38) NULL,
    CONSTRAINT PK_Employee PRIMARY KEY (EMP_ID)
    );
    
/****** Object:  Table [dbo].[Attribute] ******/
CREATE TABLE dbo.Attribute(
	ATTR_ID CHAR(38) NOT NULL,
	ATTR_Name VARCHAR(50) NOT NULL,
	ATTR_Value VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Attribute PRIMARY KEY (ATTR_ID)
    );

/****** Object:  Table [dbo].[EmployeeAttribute] ******/
CREATE TABLE dbo.EmployeeAttribute(
	EMPATTR_EmployeeID CHAR(38) NOT NULL,
	EMPATTR_AttributeID CHAR(38) NOT NULL,
    CONSTRAINT PK_EmployeeAttribute PRIMARY KEY (EMPATTR_EmployeeID, EMPATTR_AttributeID)
);

/****** Object:  ForeignKey [FK_Employee_Employee] ******/
ALTER TABLE dbo.Employee 
ADD CONSTRAINT FK_Employee_Employee FOREIGN KEY(EMP_Supervisor)
REFERENCES dbo.Employee (EMP_ID);

/****** Object:  ForeignKey [FK_EmployeeAttribute_Attribute] ******/
ALTER TABLE dbo.EmployeeAttribute  
ADD  CONSTRAINT FK_EmployeeAttribute_Attribute FOREIGN KEY(EMPATTR_AttributeID)
REFERENCES dbo.Attribute (ATTR_ID);

/****** Object:  ForeignKey [FK_EmployeeAttribute_Employee] ******/
ALTER TABLE dbo.EmployeeAttribute 
ADD  CONSTRAINT FK_EmployeeAttribute_Employee FOREIGN KEY(EMPATTR_EmployeeID)
REFERENCES dbo.Employee (EMP_ID);
