﻿CREATE TABLE [dbo].[ContactLog] (
    [Id]      INT           IDENTITY (0, 1) NOT NULL,
    [Name]    VARCHAR (50)  NOT NULL,
    [Content] VARCHAR (MAX) NOT NULL,
    [Time]    DATETIME      DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)  );
