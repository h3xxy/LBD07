USE [FerriZapatosV15]
GO
/****** Object:  Table [dbo].[ApartadosM]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApartadosM](
	[idApartadosM] [int] IDENTITY(1,1) NOT NULL,
	[idApartado] [int] NULL,
	[idProducto] [int] NULL,
	[Cantidad] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ApartadosM] ON
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (4, 2, 1000, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (6, 3, 1000, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (7, 4, 1000, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (8, 5, 1025, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (9, 6, 1000, 1)
INSERT [dbo].[ApartadosM] ([idApartadosM], [idApartado], [idProducto], [Cantidad]) VALUES (5, 3, 1000, 1)
SET IDENTITY_INSERT [dbo].[ApartadosM] OFF
/****** Object:  Table [dbo].[Caja]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja](
	[idCaja] [int] IDENTITY(1,1) NOT NULL,
	[Fondos] [float] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Caja] ON
INSERT [dbo].[Caja] ([idCaja], [Fondos]) VALUES (1, 25954)
SET IDENTITY_INSERT [dbo].[Caja] OFF
/****** Object:  Table [dbo].[Cliente]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] IDENTITY(1000,1) NOT NULL,
	[Nombre] [varchar](150) NULL,
	[ApPaterno] [varchar](150) NULL,
	[ApMaterno] [varchar](150) NULL,
	[Telefono] [varchar](50) NULL,
	[Calle] [varchar](150) NULL,
	[Numero] [varchar](50) NULL,
	[CodigoPostal] [varchar](50) NULL,
	[Colonia] [varchar](150) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1000, N'asdasd', N'asd', N'asdsa', N'asd', N'asd', N'asd', N'asd', N'asd')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1001, N'Irvin Eliud', N'Garcia', N'Perez', N'12345', N'oifdjklf', N'13', N'23456', N'dfsghggdfsd')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1002, N'asdsad', N'sadsad', N'asdasd', N'1345', N'sdf', N'23435', N'345', N'sdafsgd')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1003, N'sadfg', N'asfdsg', N'asdfsg', N'12345', N'gh', N'234', N'324', N'fgkñlfd')
INSERT [dbo].[Cliente] ([idCliente], [Nombre], [ApPaterno], [ApMaterno], [Telefono], [Calle], [Numero], [CodigoPostal], [Colonia]) VALUES (1004, N'Angel', N'Pacheco', N'Mazuca', N'1111111111111', N'asdf', N'54sdf', N'1321', N'12312')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
/****** Object:  Table [dbo].[Inventario]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventario](
	[IdProducto] [int] IDENTITY(1000,1) NOT NULL,
	[IdProveedor] [int] NULL,
	[Modelo] [int] NULL,
	[Color] [varchar](50) NULL,
	[Material] [varchar](50) NULL,
	[Marca] [varchar](50) NULL,
	[Talla] [float] NULL,
	[PrecioCompra] [float] NULL,
	[PrecioVenta] [float] NULL,
	[CantidadExistente] [int] NULL,
	[ImagenProducto] [image] NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Inventario] ON
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1000, 1, 101, N'Blanco', N'Cuero', N'Principe', 10, 50, 200, 31, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1001, 2, 102, N'Azul', N'Sintético', N'Andrea', 6, 400, 450, 0, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1002, 1, 103, N'Gris', N'Sintético', N'Andrea', 4, 400, 600, 0, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1003, 2, 104, N'Azul', N'Plástico', N'Flexi', 8, 500, 1000, 11, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1004, 1, 105, N'Negro', N'Sintético', N'Flexi', 7, 750, 900, 8, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1005, 2, 106, N'Café', N'Plástico', N'Flexi', 9, 800, 1200, 5, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1006, 1, 107, N'Negro', N'Piel', N'Flexi', 10, 1000, 1500, 14, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1007, 2, 108, N'Azul', N'Piel', N'Flexi', 11, 1500, 2000, 13, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1008, 1, 109, N'Café Oscuro', N'Piel', N'Flexi', 12, 900, 1100, 11, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1009, 2, 110, N'Crema', N'Piel', N'Flexi', 10.5, 800, 1000, 15, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1010, 1, 111, N'Gris', N'Sintético', N'Flexi', 9, 800, 1000, 11, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1011, 2, 112, N'Rojo', N'Piel', N'Flexi', 8, 700, 1000, 13, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1012, 1, 113, N'Azul', N'Sintético', N'Flexi', 7, 600, 900, 11, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1013, 2, 114, N'Verde', N'Piel', N'Flexi', 8.5, 500, 900, 12, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1014, 1, 115, N'Negro', N'Gamuza', N'Flexi', 7.5, 600, 1400, 8, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1015, 2, 116, N'Blanco', N'Plástico', N'Patito', 4, 200, 300, 5, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1016, 1, 117, N'Amarillo', N'Sintético', N'Patito', 6, 800, 1500, 15, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1017, 2, 118, N'Café Oscuro', N'Gamuza', N'Flexi', 10.5, 800, 1400, 15, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1018, 1, 119, N'Verde', N'Plástico', N'Flexi', 5.5, 800, 1100, 15, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1019, 2, 120, N'Rosa Fosfo', N'Piel de Dinosaurio', N'Dinosaurín', 8, 1000, 1800, 2, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1020, 1, 121, N'Negro', N'Piel', N'Erez', 4.5, 800, 1200, 15, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1021, 2, 122, N'Dorado', N'Oro', N'Principe', 4.5, 1000000, 2000000, 0, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1022, 1, 123, N'Negro', N'Tela', N'Converse', 7.5, 800, 850, 12, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1023, 1, 124, N'Azul', N'Tela', N'Converse', 8, 800, 850, 10, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1024, 1, 125, N'Rojo', N'Tela', N'Comverse', 7.5, 800, 850, 4, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1025, 1, 126, N'Verdes', N'Tela', N'Converse', 8, 800, 850, 9, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1026, 1, 127, N'Morados', N'Tela', N'Converse', 7, 800, 850, 10, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1027, 1, 128, N'Gris', N'Tela', N'Converse', 7.5, 800, 850, 5, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1028, 1, 129, N'Blanco', N'Tela', N'Converse', 8, 800, 850, 3, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1029, 1, 130, N'jbk', N'gchn', N'dgh', 8, 800, 850, 2, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1030, 1, 131, N'rojo', N'tela', N'erez', 8, 900, NULL, NULL, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1031, 1, 131, N'rojo', N'tela', N'erez', 8, 900, NULL, 10, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1034, 2, 130, N'rosa', N'tela', N'Flexi', 8.5, 1500, NULL, 1500, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1035, 1, 132, N'Negro', N'Tela', N'Patito', 7, 500, NULL, 500, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1036, 2, 133, N'Negro', N'Tela', N'Principe', 7, 500, NULL, 250, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1037, 1, 134, N'Rojo', N'Plastico', N'Principe', 4, 150, NULL, 150, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1038, 2, 138, N'Amarillo', N'Tela', N'Flexi', 5, 500, 580, 10, NULL)
INSERT [dbo].[Inventario] ([IdProducto], [IdProveedor], [Modelo], [Color], [Material], [Marca], [Talla], [PrecioCompra], [PrecioVenta], [CantidadExistente], [ImagenProducto]) VALUES (1039, 1, 200, N'Blanco', N'Vidrio', N'Principe', 4, 100, 50, 50, NULL)
SET IDENTITY_INSERT [dbo].[Inventario] OFF
/****** Object:  Table [dbo].[Proveedores]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idProvedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[RFC] [varchar](50) NULL,
	[Folio] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (1, N'ANDREA', N'AQA250502MU3', N'00001', N'Cerro del Fraile #1205')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (2, N'EREZ', N'RUPE250502B74', N'00002', N'Tepeyac #615')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (3, N'converses', N'SADFG4654EWR', N'00006', N'POR HYA')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (4, N'Nike', N'GDSGF456ER42', N'01026', N'SAN ISIDRO')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (5, N'Irwing Aaron', N'IATV050HNLL', N'20', N'Pino 301')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (6, N'Adidas', N'sadf46wq', N'108900', N'lomas de la pas')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (7, N'asdf', N'asdf46584', N'dfg84', N'sdf sdfg')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (8, N'elirwing', N'sadfg54t1ua', N'ut2012', N'asd lksa')
INSERT [dbo].[Proveedores] ([idProvedor], [Nombre], [RFC], [Folio], [Direccion]) VALUES (9, N'asdfasdf', N'asdf', N'asdf', N'asdf')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
/****** Object:  Table [dbo].[ProductosM]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosM](
	[idProductosM] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NULL,
	[idProducto] [int] NULL,
	[Cantidad] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProductosM] ON
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (1, 1, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (2, 1, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (3, 1, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (4, 1, 1009, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (5, 1, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (7, 1, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (9, 1, 1006, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (12, 1, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (15, 1, 1006, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (16, 1, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (17, 2, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (22, 2, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (24, 2, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (25, 2, 1013, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (28, 2, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (31, 2, 1013, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (32, 2, 1009, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (34, 2, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (37, 2, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (40, 2, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (41, 2, 1009, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (43, 2, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (44, 2, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (48, 2, 1009, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (49, 2, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (50, 2, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (53, 2, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (54, 2, 1009, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (63, 4, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (64, 4, 1008, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (65, 4, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (79, 0, 1008, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (82, 0, 1006, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (85, 0, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (89, 0, 1015, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (92, 10, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (93, 10, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (94, 10, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (96, 10, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (97, 10, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (99, 10, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (102, 10, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (224, 38, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (227, 38, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (228, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (231, 39, 1011, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (232, 39, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (235, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (236, 39, 1007, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (237, 39, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (238, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (239, 39, 1011, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (240, 39, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (241, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (242, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (243, 39, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (244, 39, 1007, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (245, 39, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (246, 39, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (247, 39, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (248, 39, 1013, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (249, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (250, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (251, 39, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (252, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (253, 39, 1006, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (256, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (258, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (259, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (262, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (263, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (264, 39, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (266, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (267, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (269, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (272, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (274, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (279, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (280, 39, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (281, 39, 1013, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (283, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (284, 39, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (287, 39, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (288, 39, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (289, 39, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (291, 39, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (294, 39, 1013, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (295, 39, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (299, 41, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (310, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (315, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (316, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (317, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (319, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (329, 49, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (332, 51, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (335, 51, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (336, 52, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (339, 52, 1008, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (340, 53, 1000, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (342, 54, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (344, 55, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (345, 56, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (346, 56, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (347, 57, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (348, 57, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (6, 1, 1006, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (8, 1, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (10, 1, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (11, 1, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (13, 1, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (14, 1, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (18, 2, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (19, 2, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (20, 2, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (21, 2, 1008, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (23, 2, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (26, 2, 1008, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (27, 2, 1013, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (29, 2, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (30, 2, 1006, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (33, 2, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (35, 2, 1009, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (36, 2, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (38, 2, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (39, 2, 1013, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (42, 2, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (45, 2, 1013, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (46, 2, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (47, 2, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (51, 2, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (52, 2, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (55, 2, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (78, 0, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (80, 0, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (81, 0, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (83, 0, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (84, 0, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (86, 0, 1018, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (87, 0, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (88, 0, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (90, 8, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (91, 9, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (101, 10, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (225, 38, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (229, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (230, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (255, 39, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (261, 39, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (278, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (296, 39, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (298, 41, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (300, 42, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (302, 43, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (304, 44, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (306, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (321, 46, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (324, 47, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (327, 48, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (328, 49, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (331, 50, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (95, 10, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (98, 10, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (268, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (311, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (100, 10, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (226, 38, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (233, 39, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (257, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (270, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (282, 39, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (286, 39, 1008, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (290, 39, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (314, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (323, 46, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (337, 52, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (277, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (293, 39, 1014, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (301, 42, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (303, 43, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (305, 44, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (307, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (325, 47, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (334, 51, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (309, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (312, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (330, 49, 1025, 10)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (343, 54, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (234, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (254, 39, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (260, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (273, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (275, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (276, 39, 1001, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (292, 39, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (318, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (320, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (322, 46, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (338, 52, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (265, 39, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (271, 39, 1000, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (285, 39, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (297, 40, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (308, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (313, 45, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (326, 47, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (333, 51, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (341, 53, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (349, 58, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (350, 59, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (351, 60, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (353, 60, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (354, 61, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (355, 61, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (356, 62, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (357, 62, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (358, 62, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (359, 62, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (361, 62, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (362, 62, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (360, 62, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (364, 64, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (365, 65, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (366, 66, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (379, 75, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (382, 78, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (386, 81, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (388, 82, 1008, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (394, 85, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (398, 85, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (399, 86, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (401, 87, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (403, 87, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (404, 87, 1008, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (405, 88, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (407, 89, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (408, 89, 1004, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (409, 90, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (410, 90, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (412, 90, 1010, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (367, 67, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (368, 68, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (369, 69, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (370, 69, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (380, 76, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (387, 82, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (395, 85, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (396, 85, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (397, 85, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (400, 86, 1002, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (402, 87, 1003, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (406, 89, 1000, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (411, 90, 1005, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (413, 90, 1012, 1)
INSERT [dbo].[ProductosM] ([idProductosM], [idVenta], [idProducto], [Cantidad]) VALUES (414, 90, 1029, 1)
SET IDENTITY_INSERT [dbo].[ProductosM] OFF
/****** Object:  Table [dbo].[Empleado]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[idTipoUsuario] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[ApPaterno] [varchar](50) NULL,
	[ApMaterno] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
	[Correo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoUsuario], [Nombre], [ApPaterno], [ApMaterno], [Usuario], [Contraseña], [Correo]) VALUES (1, 1, N'HawkSoft', N'Systems', N':v', N'admin', N'1234', N'angeel0745@gmail.com')
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoUsuario], [Nombre], [ApPaterno], [ApMaterno], [Usuario], [Contraseña], [Correo]) VALUES (2, 2, N'Juan Jose', N'Perez', N'Cruz', N'Juanjo24', N'12345', NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoUsuario], [Nombre], [ApPaterno], [ApMaterno], [Usuario], [Contraseña], [Correo]) VALUES (3, 3, N'Moises', N'Molina', N'Ramos', N'MoyHot35', N'123456', NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoUsuario], [Nombre], [ApPaterno], [ApMaterno], [Usuario], [Contraseña], [Correo]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Empleado] ([idEmpleado], [idTipoUsuario], [Nombre], [ApPaterno], [ApMaterno], [Usuario], [Contraseña], [Correo]) VALUES (5, 3, N'Ian Alexandro', N'Solis', N'Cardona', N'Mazorca98', N'789456123pl', N'iansolis98@gmail.com')
SET IDENTITY_INSERT [dbo].[Empleado] OFF
/****** Object:  Table [dbo].[TipoPago]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPago](
	[idTipoPago] [int] IDENTITY(1,1) NOT NULL,
	[Pago] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPago] ON
INSERT [dbo].[TipoPago] ([idTipoPago], [Pago]) VALUES (1, N'Efectivo')
INSERT [dbo].[TipoPago] ([idTipoPago], [Pago]) VALUES (2, N'Tarjeta')
SET IDENTITY_INSERT [dbo].[TipoPago] OFF
/****** Object:  Table [dbo].[Sucursal]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[idSucursal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [float] NULL,
	[Direccion] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursal] ON
INSERT [dbo].[Sucursal] ([idSucursal], [Nombre], [Telefono], [Direccion]) VALUES (1, N'Zapatería Ferri', 21695466, N'Morelos Oriente #1135')
SET IDENTITY_INSERT [dbo].[Sucursal] OFF
/****** Object:  Table [dbo].[SistemaApartado]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaApartado](
	[idApartado] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NULL,
	[Precio] [float] NULL,
	[Enganche] [float] NULL,
	[Debe] [float] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SistemaApartado] ON
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (2, 1, NULL, NULL, NULL)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (3, 1001, 812, 1, 11)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (4, 1001, 406, 1, 403)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (5, 1002, 986, 1, 885)
INSERT [dbo].[SistemaApartado] ([idApartado], [idCliente], [Precio], [Enganche], [Debe]) VALUES (6, 1003, 406, 1, 405)
SET IDENTITY_INSERT [dbo].[SistemaApartado] OFF
/****** Object:  Table [dbo].[Venta]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NULL,
	[idCaja] [int] NULL,
	[SubTotal] [float] NULL,
	[IVA] [float] NULL,
	[Total] [float] NULL,
	[Pago] [float] NULL,
	[cambio] [float] NULL,
	[fecha] [date] NULL,
	[idTipoPago] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Venta] ON
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (1, 1, 1, 14650.000000000002, 2344.0000000000005, 16994, 17000, 6, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (4, 1, 1, 3700.0000000000009, 592.00000000000011, 4292, 5000, 708, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (9, 1, 1, 450.00000000000006, 72.000000000000014, 522, 84450, 83928, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (10, 1, 1, 11850, 1896, 13746, 13746, 0, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (11, 1, 1, 2750, 440, 3190, 3190, 0, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (12, 1, 1, 9300, 1488, 10788, 10788, 0, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (14, 1, 1, 1250, 200, 1450, 1500, 50, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (15, 1, 1, 3800.0000000000009, 608.00000000000011, 4408, 5000, 592, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (17, 1, 1, 2300, 368, 2668, 3000, 332, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (18, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (19, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (20, 1, 1, 1000, 160.00000000000003, 1160, 2000, 840, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (25, 1, 1, 600, 96, 696, 696, 0, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (26, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (27, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (28, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (29, 1, 1, 1000, 160.00000000000003, 1160, 20000000, 19998840, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (30, 1, 1, 350, 56, 406, 100000, 99594, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (31, 1, 1, 1000, 160.00000000000003, 1160, 1000000, 998840, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (32, 1, 1, 350, 56, 406, 9999999, 9999593, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (40, 1, 1, 350, 56, 406, 500, 94, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (51, 1, 1, 2850, 456, 3306, 3306, 0, CAST(0x433B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (52, 1, 1, 3650.0000000000009, 584.00000000000011, 4234, 5000, 766, CAST(0x483B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (53, 1, 1, 950.00000000000011, 152.00000000000003, 1102, 2000, 898, CAST(0x4E3B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (54, 1, 1, 2100, 336, 2436, 3000, 564, CAST(0x4E3B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (55, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (56, 1, 1, 950.00000000000011, 152.00000000000003, 1102, 2000, 898, CAST(0x513B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (57, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (8, 1, 1, 900.00000000000011, 144.00000000000003, 1044, 1500, 456, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (33, 1, 1, 35000, 5600, 40600, 40600, 0, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (34, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (35, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (36, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (37, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (38, 1, 1, 1400, 224, 1624, 2000, 376, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (39, 1, 1, 53000.000000000007, 8480.0000000000018, 61480, 1000000, 938520, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (41, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (42, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (43, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (44, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (45, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (46, 1, 1, 1050, 168, 1218, 2000, 782, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (47, 1, 1, 1050, 168, 1218, 5000, 3782, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (48, 1, 1, 350, 56, 406, 500, 94, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (49, 1, 1, 9200, 1472, 10672, 10672, 0, CAST(0x413B0B00 AS Date), NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (50, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (58, 1, 1, 1000, 160.00000000000003, 1160, 2000, 840, CAST(0x5E3B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (59, 1, 1, 350, 56, 406, 410, 4, CAST(0x643B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (60, 3, 1, 700, 112, 812, 812, 0, CAST(0x643B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (61, 1, 1, 950.00000000000011, 152.00000000000003, 1102, 1105, 3, CAST(0x663B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (62, 1, 1, 2450, 392, 2842, 2842, 0, CAST(0x673B0B00 AS Date), 2)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (64, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (65, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (66, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (67, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (69, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (85, 1, 1, 2600, 416, 3016, 4000, 984, CAST(0x693B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (87, 1, 1, 3500.0000000000005, 560.00000000000011, 4060, 4100, 40, CAST(0x693B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (90, 1, 1, 5150, 824, 5974, 6000, 26, CAST(0x693B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (68, 1, 1, 200, 32, 232, 250, 18, CAST(0x693B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (75, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (76, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (78, 1, 1, 200, 32, 232, 300, 68, CAST(0x693B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (81, 1, 1, 200, 32, 232, 300, 68, CAST(0x693B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (82, 1, 1, 1700.0000000000002, 272.00000000000006, 1972, 2000, 28, CAST(0x693B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (86, 1, 1, 800, 128, 928, 1000, 72, CAST(0x693B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (89, 1, 1, 1700.0000000000002, 272.00000000000006, 1972, 2000, 28, CAST(0x693B0B00 AS Date), 1)
INSERT [dbo].[Venta] ([idVenta], [idEmpleado], [idCaja], [SubTotal], [IVA], [Total], [Pago], [cambio], [fecha], [idTipoPago]) VALUES (88, 1, 1, 1200, 192, 1392, 1392, 0, CAST(0x693B0B00 AS Date), 2)
SET IDENTITY_INSERT [dbo].[Venta] OFF
/****** Object:  Table [dbo].[RegistroEntrada]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroEntrada](
	[idRegistro] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NULL,
	[Fecha] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RegistroEntrada] ON
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (1, N'admin', N'4/12/2016 1:00:39 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (2, N'admin', N'4/12/2016 1:03:16 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (3, N'admin', N'4/12/2016 1:06:25 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (4, N'admin', N'4/12/2016 1:07:56 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (5, N'admin', N'4/12/2016 1:08:48 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (6, N'admin', N'4/12/2016 2:44:22 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (7, N'admin', N'4/12/2016 2:45:38 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (8, N'admin', N'4/12/2016 2:50:02 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (9, N'admin', N'4/12/2016 2:58:42 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (10, N'admin', N'4/12/2016 3:00:12 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (11, N'admin', N'4/12/2016 3:04:01 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (12, N'admin', N'4/12/2016 3:07:21 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (13, N'admin', N'4/12/2016 3:08:41 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (14, N'admin', N'4/12/2016 3:20:31 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (15, N'admin', N'4/12/2016 3:23:18 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (16, N'admin', N'4/12/2016 3:30:39 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (17, N'admin', N'4/12/2016 3:33:51 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (22, N'admin', N'4/12/2016 4:11:26 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (23, N'admin', N'4/12/2016 4:35:58 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (24, N'admin', N'4/12/2016 4:36:50 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (25, N'admin', N'4/12/2016 4:38:47 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (26, N'admin', N'4/12/2016 4:41:05 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (27, N'admin', N'4/12/2016 4:44:51 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (29, N'admin', N'4/12/2016 5:33:19 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (31, N'admin', N'4/12/2016 5:37:46 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (32, N'admin', N'4/12/2016 5:39:18 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (33, N'admin', N'4/12/2016 5:40:03 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (34, N'admin', N'4/12/2016 5:42:33 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (35, N'admin', N'4/12/2016 5:45:23 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (36, N'admin', N'4/12/2016 5:47:25 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (37, N'admin', N'4/12/2016 5:49:00 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (38, N'admin', N'4/12/2016 5:53:24 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (39, N'admin', N'4/14/2016 6:43:53 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (40, N'admin', N'4/19/2016 2:25:26 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (41, N'admin', N'4/19/2016 3:27:51 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (42, N'admin', N'4/19/2016 4:39:33 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (43, N'admin', N'4/19/2016 4:42:09 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (44, N'admin', N'4/19/2016 4:44:01 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (45, N'admin', N'4/19/2016 4:49:51 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (46, N'admin', N'4/19/2016 4:51:17 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (47, N'admin', N'4/19/2016 4:54:08 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (48, N'admin', N'4/19/2016 4:56:49 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (49, N'admin', N'4/19/2016 4:58:42 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (50, N'admin', N'4/19/2016 5:06:30 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (51, N'admin', N'4/19/2016 5:13:12 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (52, N'admin', N'4/19/2016 5:35:45 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (53, N'admin', N'4/19/2016 5:36:21 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (54, N'admin', N'4/24/2016 5:02:07 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (55, N'admin', N'4/24/2016 5:10:04 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (56, N'admin', N'4/24/2016 5:21:13 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (57, N'admin', N'4/24/2016 5:22:30 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (58, N'admin', N'4/24/2016 5:46:30 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (59, N'admin', N'4/24/2016 6:07:24 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (60, N'admin', N'4/24/2016 6:09:14 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (63, N'admin', N'4/24/2016 6:21:31 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (65, N'admin', N'4/24/2016 6:27:47 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (66, N'admin', N'4/24/2016 6:28:56 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (67, N'admin', N'4/24/2016 6:31:49 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (68, N'admin', N'4/24/2016 8:56:41 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (69, N'admin', N'4/25/2016 1:54:50 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (70, N'admin', N'4/25/2016 5:34:04 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (71, N'admin', N'4/25/2016 5:35:41 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (72, N'admin', N'4/28/2016 8:57:27 AM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (73, N'admin', N'4/28/2016 1:00:10 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (74, N'admin', N'4/28/2016 1:02:27 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (75, N'admin', N'4/28/2016 5:43:47 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (76, N'admin', N'4/28/2016 5:55:01 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (77, N'admin', N'4/28/2016 5:55:13 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (78, N'admin', N'4/28/2016 6:04:10 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (79, N'admin', N'4/28/2016 6:04:57 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (18, N'admin', N'4/12/2016 3:35:31 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (19, N'admin', N'4/12/2016 3:37:34 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (20, N'admin', N'4/12/2016 3:39:02 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (21, N'admin', N'4/12/2016 3:41:10 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (28, N'admin', N'4/12/2016 5:30:04 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (30, N'admin', N'4/12/2016 5:37:08 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (61, N'admin', N'4/24/2016 6:11:37 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (62, N'admin', N'4/24/2016 6:15:29 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (64, N'admin', N'4/24/2016 6:24:00 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (80, N'admin', N'4/28/2016 6:05:46 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (81, N'admin', N'4/28/2016 6:23:14 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (82, N'admin', N'11/05/2016 01:23:25 a. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (83, N'admin', N'12/05/2016 22:25:09')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (84, N'admin', N'12/05/2016 22:27:36')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (85, N'admin', N'12/05/2016 22:28:52')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (88, N'admin', N'12/05/2016 22:39:04')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (92, N'admin', N'13/05/2016 2:32:56')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (94, N'admin', N'13/05/2016 3:41:33')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (95, N'admin', N'13/05/2016 3:43:32')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (96, N'admin', N'13/05/2016 13:18:14')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (97, N'admin', N'13/05/2016 14:52:51')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (86, N'admin', N'12/05/2016 22:34:48')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (87, N'admin', N'12/05/2016 22:35:39')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (90, N'admin', N'13/05/2016 1:15:51')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (91, N'admin', N'13/05/2016 1:30:04')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (89, N'admin', N'12/05/2016 23:27:33')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (93, N'admin', N'13/05/2016 3:35:39')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (98, N'Admin', N'16/05/2016 20:57:35')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (99, N'Admin', N'16/05/2016 21:03:54')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (100, N'Admin', N'16/05/2016 21:07:50')
GO
print 'Processed 100 total records'
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (101, N'Admin', N'16/05/2016 21:24:49')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (108, N'Admin', N'16/05/2016 23:03:02')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (109, N'Admin', N'16/05/2016 23:20:06')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (119, N'Admin', N'17/05/2016 0:49:01')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (121, N'Admin', N'17/05/2016 0:53:38')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (122, N'Admin', N'17/05/2016 2:22:33')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (123, N'Admin', N'17/05/2016 2:27:22')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (124, N'Admin', N'17/05/2016 2:30:38')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (125, N'Admin', N'17/05/2016 2:34:33')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (126, N'Admin', N'17/05/2016 2:59:14')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (102, N'Admin', N'16/05/2016 22:27:58')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (103, N'Admin', N'16/05/2016 22:31:11')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (104, N'Admin', N'16/05/2016 22:35:51')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (105, N'Admin', N'16/05/2016 22:36:43')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (106, N'Admin', N'16/05/2016 22:38:04')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (107, N'Admin', N'16/05/2016 22:40:27')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (110, N'Admin', N'16/05/2016 23:44:46')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (111, N'Admin', N'16/05/2016 23:47:54')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (112, N'Admin', N'16/05/2016 23:50:16')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (113, N'Admin', N'16/05/2016 23:51:29')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (114, N'Admin', N'16/05/2016 23:52:06')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (115, N'Admin', N'16/05/2016 23:52:28')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (116, N'Admin', N'16/05/2016 23:57:21')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (117, N'Admin', N'16/05/2016 23:59:05')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (118, N'Admin', N'17/05/2016 0:03:37')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (120, N'Admin', N'17/05/2016 0:51:37')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (127, N'admin', N'17/5/2016 04:17:24')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (128, N'admin', N'17/5/2016 04:20:24')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (129, N'admin', N'17/5/2016 04:23:17')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (130, N'admin', N'17/5/2016 04:27:48')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (133, N'MoyHot35', N'17/5/2016 04:39:25')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (148, N'admin', N'17/5/2016 09:11:58')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (149, N'admin', N'17/5/2016 09:19:36')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (153, N'admin', N'19/5/2016 00:26:30')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (154, N'admin', N'19/5/2016 00:27:22')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (156, N'admin', N'19/5/2016 00:31:32')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (131, N'Juanjo24', N'17/5/2016 04:34:39')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (132, N'MoyHot35', N'17/5/2016 04:35:37')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (134, N'MoyHot35', N'17/5/2016 05:02:46')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (135, N'admin', N'17/5/2016 05:03:53')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (136, N'Moyhot35', N'17/5/2016 05:04:03')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (137, N'MoyHot35', N'17/5/2016 05:09:59')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (138, N'MoyHot35', N'17/5/2016 05:10:54')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (139, N'Moyhot35', N'17/5/2016 05:12:09')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (140, N'MoyHot35', N'17/5/2016 05:28:27')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (141, N'mOYHOT35', N'17/5/2016 05:30:30')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (142, N'MoyHot35', N'17/5/2016 05:32:27')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (143, N'MoyHot35', N'17/5/2016 05:44:17')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (144, N'MoyHot35', N'17/5/2016 05:46:51')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (145, N'Moyhot35', N'17/5/2016 05:48:18')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (146, N'Moyhot35', N'17/5/2016 05:49:43')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (147, N'Moyhot35', N'17/5/2016 05:51:22')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (150, N'ADMIN', N'17/5/2016 09:55:31')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (151, N'admin', N'18/5/2016 23:27:35')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (152, N'admin', N'19/5/2016 00:24:56')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (155, N'admin', N'19/5/2016 00:29:22')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (157, N'admin', N'19/5/2016 00:55:30')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (158, N'admin', N'19/05/2016 10:52:21 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (159, N'admin', N'19/05/2016 11:01:31 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (161, N'admin', N'19/05/2016 11:08:33 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (169, N'admin', N'19/05/2016 11:25:00 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (170, N'admin', N'19/05/2016 11:25:58 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (173, N'admin', N'19/05/2016 11:39:40 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (174, N'admin', N'19/05/2016 11:45:36 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (179, N'admin', N'20/05/2016 12:08:23 a. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (180, N'admin', N'20/05/2016 12:10:50 a. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (181, N'admin', N'20/05/2016 12:12:28 a. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (160, N'admin', N'19/05/2016 11:05:17 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (162, N'admin', N'19/05/2016 11:11:02 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (163, N'admin', N'19/05/2016 11:12:24 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (164, N'admin', N'19/05/2016 11:17:05 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (165, N'admin', N'19/05/2016 11:19:10 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (166, N'admin', N'19/05/2016 11:20:10 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (167, N'admin', N'19/05/2016 11:21:22 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (168, N'admin', N'19/05/2016 11:23:47 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (171, N'admin', N'19/05/2016 11:29:38 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (172, N'admin', N'19/05/2016 11:33:54 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (175, N'admin', N'19/05/2016 11:55:50 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (176, N'admin', N'19/05/2016 11:57:15 p. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (177, N'admin', N'20/05/2016 12:05:01 a. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (178, N'admin', N'20/05/2016 12:07:06 a. m.')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (182, N'admin', N'20/5/2016 11:14:02')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (183, N'admin', N'20/5/2016 11:18:17')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (184, N'admin', N'20/5/2016 11:27:17')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (185, N'admin', N'20/5/2016 11:37:02')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (186, N'admin', N'20/5/2016 11:40:18')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (193, N'admin', N'5/20/2016 1:29:25 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (194, N'admin', N'5/20/2016 1:30:47 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (195, N'admin', N'5/20/2016 1:39:41 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (196, N'admin', N'5/20/2016 1:42:14 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (197, N'admin', N'5/20/2016 1:44:19 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (198, N'admin', N'5/20/2016 1:46:08 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (200, N'admin', N'5/20/2016 2:05:36 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (201, N'admin', N'5/20/2016 2:07:10 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (202, N'admin', N'5/20/2016 2:10:57 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (203, N'admin', N'5/20/2016 2:11:24 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (187, N'admin', N'5/20/2016 12:49:51 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (188, N'admin', N'5/20/2016 12:53:27 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (189, N'admin', N'5/20/2016 12:55:33 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (192, N'admin', N'5/20/2016 1:22:08 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (190, N'admin', N'5/20/2016 1:05:58 PM')
GO
print 'Processed 200 total records'
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (191, N'admin', N'5/20/2016 1:07:55 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (199, N'admin', N'5/20/2016 2:04:41 PM')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (207, N'admin', N'22/5/2016 13:23:40')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (208, N'admin', N'22/5/2016 14:13:15')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (209, N'admin', N'22/5/2016 14:16:20')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (210, N'admin', N'22/5/2016 14:19:43')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (211, N'admin', N'22/5/2016 14:23:16')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (212, N'admin', N'22/5/2016 14:31:27')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (213, N'admin', N'22/5/2016 14:34:47')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (214, N'admin', N'22/5/2016 14:46:30')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (215, N'admin', N'22/5/2016 14:50:02')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (216, N'admin', N'22/5/2016 14:56:50')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (217, N'admin', N'22/5/2016 15:00:35')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (218, N'admin', N'22/5/2016 15:04:08')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (219, N'admin', N'22/5/2016 15:13:45')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (220, N'admin', N'22/5/2016 15:22:57')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (221, N'admin', N'22/5/2016 15:24:37')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (222, N'admin', N'22/5/2016 15:27:26')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (223, N'admin', N'22/5/2016 15:31:03')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (224, N'admin', N'22/5/2016 15:35:32')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (225, N'admin', N'22/5/2016 15:51:52')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (226, N'admin', N'22/5/2016 16:04:29')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (227, N'admin', N'22/5/2016 16:44:13')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (228, N'ADMIN', N'22/5/2016 16:47:00')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (229, N'admin', N'22/5/2016 16:52:19')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (230, N'admin', N'22/5/2016 17:23:21')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (232, N'admin', N'22/5/2016 17:27:18')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (233, N'admin', N'22/5/2016 17:33:15')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (235, N'admin', N'22/5/2016 17:47:17')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (236, N'admin', N'22/5/2016 17:49:55')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (237, N'admin', N'22/5/2016 17:55:05')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (238, N'admin', N'22/5/2016 17:57:04')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (204, N'admin', N'22/5/2016 13:05:16')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (205, N'Mazorca98', N'22/5/2016 13:08:57')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (206, N'Mazorca98', N'22/5/2016 13:23:02')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (231, N'admin', N'22/5/2016 17:23:54')
INSERT [dbo].[RegistroEntrada] ([idRegistro], [Usuario], [Fecha]) VALUES (234, N'admin', N'22/5/2016 17:41:55')
SET IDENTITY_INSERT [dbo].[RegistroEntrada] OFF
/****** Object:  Table [dbo].[RelacionSucursalEmpleado]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelacionSucursalEmpleado](
	[idRelEmpleadoSucursal] [int] IDENTITY(1,1) NOT NULL,
	[idSucursal] [int] NULL,
	[idEmpleado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 05/22/2016 18:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[idTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[PuestoTrabajo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoUsuario] ON
INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [PuestoTrabajo]) VALUES (1, N'Administrador')
INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [PuestoTrabajo]) VALUES (2, N'Gerente')
INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [PuestoTrabajo]) VALUES (3, N'Ayudante General')
SET IDENTITY_INSERT [dbo].[TipoUsuario] OFF
/****** Object:  StoredProcedure [dbo].[VENTA_llenarConUsuario]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[VENTA_llenarConUsuario]
	@idEmpleado int
	as
	begin
		

		insert into Venta
		(
			idEmpleado
		)
		values
		(
			@idEmpleado
		)
	end
GO
/****** Object:  StoredProcedure [dbo].[TipoUser]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TipoUser]
@User varchar(50)
as
begin
select idTipoUsuario 
from
Empleado
where 
Usuario = @User
end
GO
/****** Object:  StoredProcedure [dbo].[RegresarProducto]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RegresarProducto] 
(
	@idProducto int,
	@Cantidad int
)
as
begin

UPDATE Inventario
SET CantidadExistente= CantidadExistente + @Cantidad
WHERE IdProducto = @idProducto


end
GO
/****** Object:  StoredProcedure [dbo].[RegistrarProveedor]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RegistrarProveedor]

@Nombre varchar(50),
@RFC varchar(50),
@Folio varchar(50),
@Direccion varchar(50)
as
begin
	insert into	Proveedores(Nombre,RFC,Folio,Direccion)
	values(@Nombre,@RFC,@Folio,@Direccion)
end
GO
/****** Object:  StoredProcedure [dbo].[RegEntrada]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RegEntrada]
	@Usuario varchar(50),
	@Fecha varchar(50)
	as
	begin
insert into 
RegistroEntrada
values
(
	@Usuario,
	@Fecha
)
end
GO
/****** Object:  StoredProcedure [dbo].[UpVenta]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpVenta]
@TipoVenta int
as
begin
UPDATE Venta
SET idTipoPago = @TipoVenta

WHERE IdVenta = (SELECT MAX(IdVenta) from Venta)
end
GO
/****** Object:  StoredProcedure [dbo].[UpCaja]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpCaja]
@Fondos float
as
begin
UPDATE Caja
SET Fondos = @Fondos + Caja.Fondos
WHERE idCaja=1;
end
GO
/****** Object:  StoredProcedure [dbo].[UltimoRegistroAM_Apartado]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UltimoRegistroAM_Apartado]
@IdApartado int
as
begin
SELECT MAX(idProducto) as Producto from ApartadosM where idApartado = @IdApartado
end
GO
/****** Object:  StoredProcedure [dbo].[UltimoIdProductosM]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UltimoIdProductosM]
as
begin
select max(idProductosM) as idProductoM from ProductosM
end
GO
/****** Object:  StoredProcedure [dbo].[UltApartado]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UltApartado]
@idApartado int
as
begin
select * from sistemaApartado where idApartado = @IdApartado
end
GO
/****** Object:  StoredProcedure [dbo].[TotalconIvaApartado]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TotalconIvaApartado]
@idApartado int
as
begin
select
sum(ApartadosM.Cantidad * Inventario.PrecioVenta * 1.16) as Subtotal
from
Inventario
join
ApartadosM
on
ApartadosM.idProducto = Inventario.idProducto
where
ApartadosM.idApartado = @idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[TotalConIva]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TotalConIva]
@idVenta int
as
begin
select
sum(ProductosM.Cantidad * Inventario.PrecioVenta * 1.16) as Subtotal
from
Inventario
join
ProductosM
on
ProductosM.idProducto = Inventario.idProducto
where
ProductosM.idVenta = @idVenta
end
GO
/****** Object:  StoredProcedure [dbo].[TodoSystemaA]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TodoSystemaA]
@IdApartado int
as
begin
select * from SistemaApartado
where 
idApartado = @IdApartado
end
GO
/****** Object:  StoredProcedure [dbo].[Reportes]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Reportes]
(
	@DiaInicial date,
	@DiaFinal date
)
as
begin
	SELECT 
	Venta.idVenta,
	Inventario.Modelo,
	Inventario.Marca,
	Inventario.PrecioVenta as Precio,
	ProductosM.Cantidad,
	Empleado.Nombre + ' ' + Empleado.ApPaterno as Cobro
	FROM Venta
	join 
		ProductosM
	on
		Venta.idVenta = ProductosM.idVenta
	join
		Inventario
	on
		ProductosM.idProducto = Inventario.IdProducto
	join
		Empleado
	on
		Venta.idEmpleado = Empleado.idEmpleado

	WHERE fecha BETWEEN @DiaInicial AND @DiaFinal

end
GO
/****** Object:  StoredProcedure [dbo].[ReporteNombre]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ReporteNombre]
(
	@DiaInicial date,
	@DiaFinal date,
	@Nombre varchar(50)
)
as
begin
	SELECT 
	Venta.idVenta,
	Inventario.Modelo,
	Inventario.Marca,
	Inventario.PrecioVenta as Precio,
	ProductosM.Cantidad,
	Empleado.Nombre + ' ' + Empleado.ApPaterno as Cobro
	FROM Venta
	join 
		ProductosM
	on
		Venta.idVenta = ProductosM.idVenta
	join
		Inventario
	on
		ProductosM.idProducto = Inventario.IdProducto
	join
		Empleado
	on
		Venta.idEmpleado = Empleado.idEmpleado

	WHERE fecha BETWEEN @DiaInicial AND @DiaFinal
	AND Empleado.Nombre LIKE @Nombre +'%'
	
end
GO
/****** Object:  StoredProcedure [dbo].[EliminarZapatos]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarZapatos]
@idProducto int,
@Cantidad int
as
begin
update Inventario
set
CantidadExistente = CantidadExistente - @Cantidad
where 
IdProducto = @idProducto
end
GO
/****** Object:  StoredProcedure [dbo].[EliminarVenta]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarVenta]
@idVenta int
as
begin
delete from ProductosM where idVenta = @idVenta; 

delete from Venta where idVenta = @idVenta;

end
GO
/****** Object:  StoredProcedure [dbo].[EliminarApartadoDeApartadosM]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarApartadoDeApartadosM]
@idApartado int
as
begin
delete from ApartadosM
where idApartado = @idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[EliminarApartado]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarApartado]
@idApartado int
as
begin
delete from SistemaApartado
where idApartado = @idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[DescripcionProductosM]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DescripcionProductosM]
@idVenta int
as
begin
select
Inventario.Modelo,
Inventario.Marca,
Inventario.Color,
Inventario.Talla,
ProductosM.Cantidad,
Inventario.PrecioVenta as Subtotal
from ProductosM
join
Inventario
on
Inventario.idProducto = ProductosM.idProducto
where ProductosM.idVenta=@idVenta
end
GO
/****** Object:  StoredProcedure [dbo].[DescripcionProductosApaM]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DescripcionProductosApaM]
@idApartado int
as
begin
select
Inventario.Modelo,
Inventario.Marca,
Inventario.Color,
Inventario.Talla,
ApartadosM.Cantidad,
Inventario.PrecioVenta as Subtotal
from ApartadosM
join
Inventario
on
Inventario.idProducto = ApartadosM.idProducto
where ApartadosM.idApartado=@idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[DatosPorCorreo]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DatosPorCorreo]
@Correo varchar(50)
as
begin
select *
from
Empleado
where

Correo = @Correo
end
GO
/****** Object:  StoredProcedure [dbo].[DatosCliente]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DatosCliente]
@IdCliente int
as
begin
select * From Cliente 
where 
idCliente = @IdCliente
end
GO
/****** Object:  StoredProcedure [dbo].[CuantosZapatosHay]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CuantosZapatosHay]
@idProducto int
as
begin
select CantidadExistente from Inventario
where 
IdProducto = @idProducto
end
GO
/****** Object:  StoredProcedure [dbo].[CSRegistrosApartadosM]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CSRegistrosApartadosM]
@idApartado int
as
begin
select count(*) as CanProductos
from
ApartadosM
where

idApartado = @idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[CSRegistros]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CSRegistros]
@idVenta int
as
begin
select count(*) as CanProductos
from
ProductosM
where

idVenta = @idVenta
end
GO
/****** Object:  StoredProcedure [dbo].[PosibleImpresion]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PosibleImpresion]
@idApartado int
as
begin
Select Cliente.Nombre +' '+ Cliente.ApPaterno +' '+ Cliente.ApMaterno As Nombre,
Inventario.Modelo,
Inventario.Marca,
Inventario.Color,
Inventario.Talla,
SistemaApartado.idApartado
from ApartadosM
join
Inventario
on
Inventario.idProducto = ApartadosM.idProducto

join SistemaApartado
on
SistemaApartado.idApartado = ApartadosM.idApartado

join Cliente
on
SistemaApartado.idCliente = Cliente.idCliente 
where ApartadosM.idApartado=@idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[ObtUltRegProCanTabProductosM]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ObtUltRegProCanTabProductosM]
as
begin
SELECT idProducto, Cantidad FROM ProductosM WHERE idProductosM = (SELECT MAX(idProductosM) from ProductosM)
end
GO
/****** Object:  StoredProcedure [dbo].[ObtUltRegProCanTabApartadosM]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ObtUltRegProCanTabApartadosM]
 @idApartadosM int
as
begin
SELECT idProducto, Cantidad 
FROM ApartadosM 
WHERE idApartadosM = @idApartadosM
end
GO
/****** Object:  StoredProcedure [dbo].[ObtenerVenta]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ObtenerVenta]
	@idVenta int
as begin

select 
	Inventario.idProducto,
	Inventario.Modelo,
	Inventario.Marca,
	inventario.Color,
	ProductosM.Cantidad

	from 
	ProductosM

	join
	Inventario
	on
	ProductosM.idProducto = Inventario.idProducto

	where

	ProductosM.idVenta = @idVenta

	end
GO
/****** Object:  StoredProcedure [dbo].[obtenerUltimoUsuario2]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[obtenerUltimoUsuario2]
as
begin
select Usuario
from RegistroEntrada
where idRegistro = (select max(idRegistro) from RegistroEntrada)
end
GO
/****** Object:  StoredProcedure [dbo].[obtenerUltimoUsuario]    Script Date: 05/22/2016 18:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[obtenerUltimoUsuario]
as
begin
declare @ultFecha varchar(50)

select @ultFecha = max(Fecha) from RegistroEntrada

select Usuario from RegistroEntrada where Fecha = @ultFecha
end
GO
/****** Object:  StoredProcedure [dbo].[ObtenerUltimoRegistroAM_Apartado]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ObtenerUltimoRegistroAM_Apartado]
@IdApartado int
as
begin
SELECT * FROM ApartadosM WHERE idProducto = (SELECT MAX(idProducto) from ApartadosM) and idApartado = @IdApartado
end
GO
/****** Object:  StoredProcedure [dbo].[ObtenerUltimoApartado]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ObtenerUltimoApartado]
as
begin
SELECT MAX(idApartado) as idApartado From SistemaApartado
end
GO
/****** Object:  StoredProcedure [dbo].[ObtenerUltimaVenta]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ObtenerUltimaVenta]
as
begin
SELECT MAX(idVenta) as idVenta FROM Venta;
end
GO
/****** Object:  StoredProcedure [dbo].[ObtenerTodosLosArticulos]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ObtenerTodosLosArticulos]
as
begin
select 
IdProducto,
Modelo,
Color,
Material,
Marca,
Talla,
PrecioVenta,
CantidadExistente
from Inventario
end
GO
/****** Object:  StoredProcedure [dbo].[ObtenerTallaPorId]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerTallaPorId]
@idProducto INT
AS
BEGIN
SELECT
Talla
FROM Inventario
WHERE IdProducto = @idProducto
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerProveedorPorID]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerProveedorPorID]
@idProducto INT
AS
BEGIN
SELECT
Proveedores.idProvedor,
Proveedores.Nombre
FROM Inventario
JOIN Proveedores
ON  Inventario.IdProveedor = Proveedores.idProvedor
WHERE IdProducto = @idProducto
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerProveedores]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerProveedores]
AS
BEGIN
SELECT DISTINCT
Proveedores.idProvedor,
Proveedores.Nombre
FROM Proveedores
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerNombrePorUsuario]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ObtenerNombrePorUsuario]
@Usuario varchar
as
begin
select
	Nombre + ' ' + ApPaterno + ' ' + ApMaterno as Nombre
from
	Empleado
where
	usuario = @Usuario
	end
GO
/****** Object:  StoredProcedure [dbo].[ObtenerMarcaPorId]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerMarcaPorId]
@idProducto INT
AS
BEGIN
SELECT
Marca
FROM Inventario
WHERE IdProducto = @idProducto
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerMarca]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ObtenerMarca]
as
begin
select DISTINCT Marca  from Inventario
where Marca is not null
ORDER By Marca desc
end
GO
/****** Object:  StoredProcedure [dbo].[ObtenerIdEmpleadoPorUsuario]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ObtenerIdEmpleadoPorUsuario]
	@Usuario varchar(50)
	as
	begin
		select idEmpleado 
		from  Empleado
		where
		usuario = @Usuario
	end
GO
/****** Object:  StoredProcedure [dbo].[MostrarNombreYIdCliente]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[MostrarNombreYIdCliente]
@idApartado int
as
begin
select 
Cliente.Nombre + ' ' + Cliente.ApPaterno + ' ' + Cliente.ApMaterno As Nombre,
Cliente.idCliente
from ApartadosM
join SistemaApartado
on
SistemaApartado.idApartado = ApartadosM.idApartado

join Cliente
on
SistemaApartado.idCliente = Cliente.idCliente 

where ApartadosM.idApartado=@idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[MostrarLoQueDebe]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[MostrarLoQueDebe]
@idApartado int
as
begin
select 
SistemaApartado.Debe
from ApartadosM
join SistemaApartado
on
ApartadosM.idApartado = SistemaApartado.idApartado
where SistemaApartado.idApartado = @idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[MostrarIdDeCliente]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MostrarIdDeCliente]
as
begin
SELECT MAX(idCliente) as idCliente From Cliente
end
GO
/****** Object:  StoredProcedure [dbo].[MostrarApartado]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MostrarApartado]
@idApartado int
as
begin
Select Cliente.Nombre +' '+ Cliente.ApPaterno +' '+ Cliente.ApMaterno,
Inventario.Modelo,
Inventario.Marca,
Inventario.Color,
Inventario.Talla
from ApartadosM
join
Inventario
on
Inventario.idProducto = ApartadosM.idProducto

join SistemaApartado
on
SistemaApartado.idApartado = ApartadosM.idApartado

join Cliente
on
SistemaApartado.idCliente = Cliente.idCliente 
where ApartadosM.idApartado=@idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[ModificarProducto]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarProducto]
@idProducto INT,
@Modelo INT,
@Color VARCHAR(50),
@Material VARCHAR(50),
@Compra FLOAT,
@Venta FLOAT,
@Cantidad INT
AS
BEGIN
UPDATE Inventario
SET Modelo = @Modelo, Color = @Color, Material = @Material, PrecioCompra = @Compra,PrecioVenta = @Venta, CantidadExistente = @Cantidad
WHERE Inventario.IdProducto = @idProducto
END
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Login]
@User varchar(50),
@Password varchar(50)
as
select COUNT(*) as Validacion
from
Empleado
where
Usuario = @User and Contraseña = @Password
GO
/****** Object:  StoredProcedure [dbo].[LlenarVenta]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[LlenarVenta]
	@idEmpleado int,
	@idCaja int,
	@SubTotal float,
	@IVA float,
	@Total float,
	@Pago float,
	@Cambio float,
	@Fecha date

as
begin
insert into Venta
values
(
	@idEmpleado,
	@idCaja,
	@SubTotal,
	@IVA,
	@Total,
	@Pago,
	@Cambio,
	@Fecha,
	Null
)
end
GO
/****** Object:  StoredProcedure [dbo].[LlenarEmpleado]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[LlenarEmpleado]
@Nombre			varchar(50),
@ApPaterno		varchar(50),
@ApMaterno		varchar(50),
@idTipoUsuario	int,
@Usuario		varchar(50),
@Contraseña		varchar(50)
as
begin
insert into Empleado 
(
Nombre,
ApPaterno,
ApMaterno,
idTipoUsuario,
Usuario,
Contraseña
)
values
(
	@Nombre,
	@ApPaterno,
	@ApMaterno,
	@idTipoUsuario,
	@Usuario,
	@Contraseña
)
end
GO
/****** Object:  StoredProcedure [dbo].[LlenarDatos]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[LlenarDatos]
@idProducto INT
AS
BEGIN
SELECT
Modelo,
Color,
Material,
PrecioCompra,
PrecioVenta,
CantidadExistente
FROM Inventario 
JOIN Proveedores
ON Proveedores.idProvedor = Inventario.IdProveedor
WHERE idProducto=@idProducto
END
GO
/****** Object:  StoredProcedure [dbo].[LlenarApartadoConCliente]    Script Date: 05/22/2016 18:14:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[LlenarApartadoConCliente]
@idCliente int
as
begin
insert into SistemaApartado
(
	idCliente
)
values
(
	@idCliente
)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertarProductosM]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[InsertarProductosM]

        @IdVenta INT,
		@IdProducto INT,
		@Cantidad INT 
		
AS 
BEGIN 

INSERT INTO 
	ProductosM
VALUES 
	(
		@IdVenta,
		@IdProducto,
		@Cantidad
	)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarProductoEnApaM]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertarProductoEnApaM]
@idApartado int,
@idProducto int,
@Cantidad int
as
begin
insert into 
ApartadosM
values
(
	@idApartado,
	@idProducto,
	@Cantidad
)
end
GO
/****** Object:  StoredProcedure [dbo].[ExisteUsuario]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ExisteUsuario]
@Usuario varchar(50)
as
begin
select count(*) as Usuario
from
Empleado
where

Usuario = @Usuario
end
GO
/****** Object:  StoredProcedure [dbo].[ExisteProducto]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ExisteProducto]

@idProducto int

as
begin

select count(*) as Producto
from
Inventario
where
idProducto = @idProducto
and
CantidadExistente > 0 
end
GO
/****** Object:  StoredProcedure [dbo].[ExisteCorreo]    Script Date: 05/22/2016 18:14:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ExisteCorreo]
@Correo varchar(50)
as
begin
select count(*) as Usuario
from
Empleado
where

Correo = @Correo
end
GO
/****** Object:  StoredProcedure [dbo].[CantidadApartadoM]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CantidadApartadoM]
@IdApartado int,
@idProducto int
as
begin
select Cantidad from ApartadosM
where 
idApartado = @IdApartado
AND
idProducto = @idProducto
end
GO
/****** Object:  StoredProcedure [dbo].[BorrarPorIdProductoM]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BorrarPorIdProductoM]
@idProductoM int
as
begin
delete from ProductosM
where
idProductosM = @idProductoM
end
GO
/****** Object:  StoredProcedure [dbo].[ArtPorTalla]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ArtPorTalla]
@Talla float
as
begin
select 
IdProducto,
Modelo,
Color,
Material,
Marca,
Talla,
PrecioVenta,
CantidadExistente
from Inventario 
where Talla=@Talla
end
GO
/****** Object:  StoredProcedure [dbo].[ArtPorModelo]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ArtPorModelo]
@Modelo int
as
begin
select 
IdProducto,
Modelo,
Color,
Material,
Marca,
Talla,
PrecioVenta,
CantidadExistente
from Inventario 
where Modelo=@Modelo
end
GO
/****** Object:  StoredProcedure [dbo].[ArtPorMaterial]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ArtPorMaterial]
@Material varchar(50)
as
begin
select 
IdProducto,
Modelo,
Color,
Material,
Marca,
Talla,
PrecioVenta,
CantidadExistente
from Inventario 
where Material=@Material
end
GO
/****** Object:  StoredProcedure [dbo].[ArtPorMarca]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ArtPorMarca]
@Marca varchar(50)
as
begin
select 
IdProducto,
Modelo,
Color,
Material,
Marca,
Talla,
PrecioVenta,
CantidadExistente
from Inventario 
where Marca=@Marca
end
GO
/****** Object:  StoredProcedure [dbo].[ArtPorID]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ArtPorID]
@idProducto int
as
begin
select 
Modelo,
Marca,
PrecioVenta as Precio
from Inventario 
where idProducto=@idProducto
end
GO
/****** Object:  StoredProcedure [dbo].[ArtPorColor]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ArtPorColor]
@Color varchar(50)
as
begin
select 
IdProducto,
Modelo,
Color,
Material,
Marca,
Talla,
PrecioVenta,
CantidadExistente
from Inventario 
where Color=@Color
end
GO
/****** Object:  StoredProcedure [dbo].[ApartadosMZapatos]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ApartadosMZapatos]
@idApartado int
as
begin
SELECT COUNT(*) as Zapatos
FROM ApartadosM
where
idApartado =  @idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[AgregarProducto]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AgregarProducto]
@IdProveedor int,
@Modelo int,
@Color varchar(50),
@Material varchar(150),
@Marca varchar(50),
@Talla varchar(50),
@PrecioVenta float,
@PrecioCompra float,
@CantidadExistente int
as
begin
insert into Inventario(IdProveedor,Modelo,Color,Material,Marca,Talla,PrecioCompra,PrecioVenta,CantidadExistente)
values(
@IdProveedor,
@Modelo,
@Color,
@Material,
@Marca ,
@Talla,
@PrecioCompra,
@PrecioVenta,
@CantidadExistente
)
end
GO
/****** Object:  StoredProcedure [dbo].[AgregarCliente]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AgregarCliente]
@Nombre varchar(150),
@ApPaterno varchar(150),
@ApMaterno varchar(150),
@Telefono varchar(50),
@Calle varchar(150),
@Numero varchar(50),
@CodigoPostal varchar(50),
@Colonia varchar(150)
as
begin
insert into Cliente
values
(
	@Nombre ,
@ApPaterno,
@ApMaterno,
@Telefono,
@Calle ,
@Numero ,
@CodigoPostal,
@Colonia 
)
end
GO
/****** Object:  StoredProcedure [dbo].[ActualizarVenta]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ActualizarVenta]

	@Subtotal float,
	@IVA float,
	@Total float,
	@Pago float,
	@Cambio float,
	@idVenta int
	as
	begin
update Venta
set  
	idCaja		=	1				,
	Subtotal	=	@Subtotal	,
	IVA			=	@IVA,
	Total		=	@Total			,
	Pago		=	@Pago				,
	Cambio		=	@Cambio			,
	Fecha		=	SYSUTCDATETIME()
	where
	idVenta = @idVenta
end
GO
/****** Object:  StoredProcedure [dbo].[ActualizarProducto]    Script Date: 05/22/2016 18:13:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ActualizarProducto]
	@IdProducto int,
	@IdProveedor int,
	@Modelo int,
	@Color varchar(50),
	@Material Varchar(50),
	@Marca Varchar(50),
	@Talla float,
	@PrecioCompra float,
	@CantidadExistente int
	as
	begin
update Inventario
set IdProveedor=@IdProveedor,
Modelo=@Modelo,
Color=@Color ,
Material=@Material,
Marca=@Marca,
Talla=@Talla,
PrecioCompra=@PrecioCompra,
CantidadExistente=@CantidadExistente

Where   IdProducto = @IdProducto

end
GO
/****** Object:  StoredProcedure [dbo].[ActualizarContraseña]    Script Date: 05/22/2016 18:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ActualizarContraseña]
@Contraseña varchar(50),
@Correo varchar(50),
@Usuario varchar(50)
as
begin
UPDATE Empleado
SET Correo = @Correo, Contraseña=@Contraseña
WHERE Usuario = @Usuario
end
GO
/****** Object:  StoredProcedure [dbo].[ActualizarApartado]    Script Date: 05/22/2016 18:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarApartado]	
@Precio float,
@Enganche float,
@Debe float,
@idApartado int
as
begin
update SistemaApartado
set
Precio = @Precio,
Enganche = @Enganche,
Debe = @Debe
where idApartado=@idApartado
end
GO
/****** Object:  StoredProcedure [dbo].[Abonar]    Script Date: 05/22/2016 18:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Abonar]
@Debe float,
@idApartado int
as 
begin
update SistemaApartado
set Debe = @Debe
where idApartado = @idApartado
end
GO
