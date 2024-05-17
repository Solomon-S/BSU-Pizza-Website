﻿CREATE TABLE [dbo].[Customer] (
    [UserName] VARCHAR (20)  NOT NULL,
    [FName]    VARCHAR (20)  NOT NULL,
    [LName]    VARCHAR (20)  NOT NULL,
    [Email]    VARCHAR (30)  NOT NULL,
    [Country]  VARCHAR (20)  NOT NULL,
    [Password] VARCHAR (20) NOT NULL,
    [Age]      NCHAR (10)    NOT NULL,
    [Gender]   VARCHAR (1)     NOT NULL,
    PRIMARY KEY CLUSTERED ([UserName] ASC) );
