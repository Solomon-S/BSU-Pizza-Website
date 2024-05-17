﻿CREATE TABLE [dbo].[ShoppingCart] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [UserName]   VARCHAR (30)   NOT NULL,
    [PizzaSize]  VARCHAR (30)   NOT NULL,
    [PizzaStyle] VARCHAR (30)   NOT NULL,
    [Toppings]   VARCHAR (50)   NOT NULL,
    [Price]      DECIMAL (5, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC) );
