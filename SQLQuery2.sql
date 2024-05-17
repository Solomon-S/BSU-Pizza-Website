﻿CREATE TABLE [dbo].[Order] (
    [OrderID]     INT    IDENTITY (1, 1) NOT NULL,
    [PizzaSize]   VARCHAR (30)   NOT NULL,
    [PizzaStyle]  VARCHAR (30)   NOT NULL,
    [Toppings]    VARCHAR (MAX)  NOT NULL,
    [Price]       DECIMAL (5, 2) NOT NULL,
    [UserName]    VARCHAR (20)   NOT NULL,
    [Delivery_ID] INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC)   );
