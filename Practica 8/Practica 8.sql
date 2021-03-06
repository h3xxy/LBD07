USE [master]
GO
/****** Object:  Database [Zapateria]    Script Date: 08/04/2018 10:32:34 p. m. ******/
CREATE DATABASE [Zapateria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Zapateria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Zapateria.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Zapateria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Zapateria_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Zapateria] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Zapateria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Zapateria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Zapateria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Zapateria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Zapateria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Zapateria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Zapateria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Zapateria] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Zapateria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Zapateria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Zapateria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Zapateria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Zapateria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Zapateria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Zapateria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Zapateria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Zapateria] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Zapateria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Zapateria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Zapateria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Zapateria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Zapateria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Zapateria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Zapateria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Zapateria] SET RECOVERY FULL 
GO
ALTER DATABASE [Zapateria] SET  MULTI_USER 
GO
ALTER DATABASE [Zapateria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Zapateria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Zapateria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Zapateria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Zapateria]
GO
/****** Object:  StoredProcedure [dbo].[PA_SECL]    Script Date: 08/04/2018 10:32:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_SECL]
AS BEGIN
	SET NOCOUNT ON
		SELECT * FROM View_Cliente
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[PA_SECL1]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_SECL1]
AS BEGIN
	SET NOCOUNT ON
		SELECT * FROM View_Empleado
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[PA_SECL2]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_SECL2]
AS BEGIN
	SET NOCOUNT ON
		SELECT * FROM View_Inventario
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[PA_SECL3]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_SECL3]
AS BEGIN
	SET NOCOUNT ON
		SELECT * FROM View_Proveedores
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[PA_SECL4]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_SECL4]
AS BEGIN
	SET NOCOUNT ON
		SELECT * FROM View_Sucursal
	SET NOCOUNT OFF
END
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventario](
	[IdProducto] [int] NOT NULL,
	[IdProveedor] [int] NULL,
	[Modelo] [int] NULL,
	[Color] [varchar](50) NULL,
	[Material] [varchar](50) NULL,
	[Marca] [varchar](50) NULL,
	[Talla] [varchar](50) NULL,
	[PrecioCompra] [int] NULL,
	[PrecioVenta] [int] NULL,
	[CantidadExistente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[IdProveedor] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[RFC] [varchar](50) NULL,
	[Folio] [int] NULL,
	[Direccion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[IdSucursal] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[View_Cliente]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Cliente] AS SELECT IdCliente, Nombre, Telefono
FROM Cliente;
GO
/****** Object:  View [dbo].[View_Empleado]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Empleado] AS SELECT IdEmpleado, Nombre, Telefono
FROM Empleado;

GO
/****** Object:  View [dbo].[View_Inventario]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Inventario] AS SELECT IdProducto, PrecioCompra, PrecioVenta
FROM Inventario;

GO
/****** Object:  View [dbo].[View_Proveedores]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Proveedores] AS SELECT IdProveedor, Nombre, RFC
FROM Proveedores;

GO
/****** Object:  View [dbo].[View_Sucursal]    Script Date: 08/04/2018 10:32:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Sucursal] AS SELECT IdSucursal, Nombre, Telefono
FROM Sucursal;
GO
USE [master]
GO
ALTER DATABASE [Zapateria] SET  READ_WRITE 
GO
