USE [Zapateria]
GO
/****** Object:  Table [dbo].[Table_Almacen]    Script Date: 03/03/2018 11:08:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Almacen](
	[id] [int] NOT NULL,
	[modelo] [nchar](10) NOT NULL,
	[cantidad] [int] NOT NULL,
	[provedor] [nvarchar](50) NOT NULL,
	[fecha_llegada] [date] NOT NULL,
 CONSTRAINT [PK_Table_Almacen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Caja]    Script Date: 03/03/2018 11:08:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Caja](
	[id_caja] [int] NOT NULL,
	[id_empleado] [nchar](10) NULL,
 CONSTRAINT [PK_Table_Caja] PRIMARY KEY CLUSTERED 
(
	[id_caja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Empleado]    Script Date: 03/03/2018 11:08:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Empleado](
	[id] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido_Paterno] [nvarchar](50) NOT NULL,
	[Apellido_Materno] [nvarchar](50) NOT NULL,
	[Edad]  AS (datediff(year,[Fecha_Nacimiento],getdate())),
	[Fecha_Nacimiento] [date] NOT NULL,
	[id_empleado] [nchar](10) NULL,
 CONSTRAINT [PK_Table_Empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Ganancias]    Script Date: 03/03/2018 11:08:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Ganancias](
	[id] [int] NOT NULL,
	[ganancia_mensual] [money] NOT NULL,
	[ganancia_anual] [money] NOT NULL,
 CONSTRAINT [PK_Table_Ganancias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Modelo]    Script Date: 03/03/2018 11:08:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Modelo](
	[id] [int] NOT NULL,
	[marca] [nchar](10) NOT NULL,
	[modelo] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Table_Modelo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Sucursal]    Script Date: 03/03/2018 11:08:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Sucursal](
	[id_sucursal] [int] NOT NULL,
	[Nombre] [nchar](10) NULL,
	[Telefono] [nchar](10) NULL,
	[Direccion] [nchar](10) NULL,
 CONSTRAINT [PK_Table_Sucursal] PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Ventas]    Script Date: 03/03/2018 11:08:53 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Ventas](
	[id] [int] NOT NULL,
	[cantidad] [money] NOT NULL,
	[precio] [money] NOT NULL,
	[iva]  AS ([precio]*(0.16)),
 CONSTRAINT [PK_Table_Ventas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Table_Almacen]  WITH CHECK ADD  CONSTRAINT [FK_Table_Almacen_Table_Sucursal] FOREIGN KEY([id])
REFERENCES [dbo].[Table_Sucursal] ([id_sucursal])
GO
ALTER TABLE [dbo].[Table_Almacen] CHECK CONSTRAINT [FK_Table_Almacen_Table_Sucursal]
GO
ALTER TABLE [dbo].[Table_Caja]  WITH CHECK ADD  CONSTRAINT [FK_Table_Caja_Table_Empleado] FOREIGN KEY([id_caja])
REFERENCES [dbo].[Table_Empleado] ([id])
GO
ALTER TABLE [dbo].[Table_Caja] CHECK CONSTRAINT [FK_Table_Caja_Table_Empleado]
GO
ALTER TABLE [dbo].[Table_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Table_Empleado_Table_Ventas] FOREIGN KEY([id])
REFERENCES [dbo].[Table_Ventas] ([id])
GO
ALTER TABLE [dbo].[Table_Empleado] CHECK CONSTRAINT [FK_Table_Empleado_Table_Ventas]
GO
ALTER TABLE [dbo].[Table_Modelo]  WITH CHECK ADD  CONSTRAINT [FK_Table_Modelo_Table_Almacen] FOREIGN KEY([id])
REFERENCES [dbo].[Table_Almacen] ([id])
GO
ALTER TABLE [dbo].[Table_Modelo] CHECK CONSTRAINT [FK_Table_Modelo_Table_Almacen]
GO
ALTER TABLE [dbo].[Table_Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Table_Ventas_Table_Ganancias] FOREIGN KEY([id])
REFERENCES [dbo].[Table_Ganancias] ([id])
GO
ALTER TABLE [dbo].[Table_Ventas] CHECK CONSTRAINT [FK_Table_Ventas_Table_Ganancias]
GO
