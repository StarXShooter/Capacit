USE [master]
GO
/****** Object:  Database [DBEcologia]    Script Date: 1/22/2018 8:47:25 AM ******/
CREATE DATABASE [DBEcologia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBEcologia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLALLAN01\MSSQL\DATA\DBEcologia.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBEcologia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLALLAN01\MSSQL\DATA\DBEcologia_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBEcologia] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBEcologia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBEcologia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBEcologia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBEcologia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBEcologia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBEcologia] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBEcologia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBEcologia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBEcologia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBEcologia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBEcologia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBEcologia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBEcologia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBEcologia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBEcologia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBEcologia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBEcologia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBEcologia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBEcologia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBEcologia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBEcologia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBEcologia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBEcologia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBEcologia] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBEcologia] SET  MULTI_USER 
GO
ALTER DATABASE [DBEcologia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBEcologia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBEcologia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBEcologia] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBEcologia] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DBEcologia]
GO
/****** Object:  Table [dbo].[AreaDeTrabajo]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreaDeTrabajo](
	[idArea] [int] IDENTITY(1,1) NOT NULL,
	[Area] [varchar](55) NOT NULL,
 CONSTRAINT [PK_AreaDeTrabajo] PRIMARY KEY CLUSTERED 
(
	[idArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CursoImpartido]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoImpartido](
	[idCursoImpartido] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[idCurso] [int] NOT NULL,
	[idSupervisor] [int] NOT NULL,
 CONSTRAINT [PK_CursoImpartido] PRIMARY KEY CLUSTERED 
(
	[idCursoImpartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cursos](
	[idCurso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[idTipoCurso] [int] NOT NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresas](
	[idEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[Empresa] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Empresas] PRIMARY KEY CLUSTERED 
(
	[idEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[idEstadoCivil] [int] IDENTITY(1,1) NOT NULL,
	[EstadoCivil] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[idEstadoCivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EvaluacionCurso]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EvaluacionCurso](
	[idEvaluacionCurso] [int] IDENTITY(1,1) NOT NULL,
	[EvaluacionCurso] [int] NOT NULL,
	[EvaluacionInstructor] [int] NOT NULL,
	[CalificacionCurso] [int] NOT NULL,
	[PropuestaDeMejora] [varchar](100) NOT NULL,
	[idCursoImpartido] [int] NOT NULL,
	[idPersonalCurso] [int] NOT NULL,
 CONSTRAINT [PK_EvaluacionCurso] PRIMARY KEY CLUSTERED 
(
	[idEvaluacionCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personal](
	[NumRegistro] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[ApellidoPaterno] [varchar](30) NOT NULL,
	[ApellidoMaterno] [varchar](30) NOT NULL,
	[CURP] [varchar](18) NOT NULL,
	[RFC] [varchar](13) NOT NULL,
	[NumSeguro] [int] NOT NULL,
	[TelefonoCasa] [int] NULL,
	[TelefonoCelular] [int] NULL,
	[idSexo] [int] NOT NULL,
	[idUsuario] [int] NULL,
	[idEstadoCivil] [int] NOT NULL,
	[LugarDeNacimiento] [varchar](50) NOT NULL,
	[FechaDeNacimiento] [varchar](50) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
	[idEstado] [int] NOT NULL,
	[Nacionalidad] [varchar](20) NOT NULL,
	[CorreoElectronico] [varchar](50) NOT NULL,
	[TipoDeSangre] [varchar](4) NOT NULL,
	[Edad] [int] NOT NULL,
	[NumExt] [int] NOT NULL,
	[Padecimientos] [varchar](80) NOT NULL,
	[Alergias] [varchar](80) NOT NULL,
	[NoPoliza] [int] NOT NULL,
	[TipoDePoliza] [varchar](20) NOT NULL,
	[Contacto1DeEmergencia] [varchar](200) NOT NULL,
	[TelefonoContacto1Emerg] [int] NOT NULL,
	[ParentescoContacto1Emerg] [varchar](20) NOT NULL,
	[Contacto2DeEmergencia] [varchar](200) NOT NULL,
	[TelefonoContacto2Emerg] [int] NOT NULL,
	[ParentescoContacto2Emerg] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Personal_1] PRIMARY KEY CLUSTERED 
(
	[NumRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonalCurso]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PersonalCurso](
	[idNumRegistro] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Apellido_Paterno] [varchar](50) NOT NULL,
	[Apellido_Materno] [varchar](50) NOT NULL,
	[CURP] [varchar](18) NOT NULL,
	[idPuesto] [int] NOT NULL,
	[idArea] [int] NOT NULL,
	[idEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_PersonalCurso] PRIMARY KEY CLUSTERED 
(
	[idNumRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto](
	[idPuesto] [int] IDENTITY(1,1) NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[idPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RelacionTrabajo]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelacionTrabajo](
	[idGerencia] [int] NOT NULL,
	[idEmpresas] [int] NOT NULL,
	[idPuesto] [int] NOT NULL,
	[idPersonalCurso] [int] NOT NULL,
	[idRelacionTrabajo] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_RelacionTrabajo] PRIMARY KEY CLUSTERED 
(
	[idRelacionTrabajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sexo](
	[idSexo] [int] IDENTITY(1,1) NOT NULL,
	[Sexo] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED 
(
	[idSexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoCurso]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoCurso](
	[idTipoCurso] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoCurso] PRIMARY KEY CLUSTERED 
(
	[idTipoCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[idTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[TipoUsuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[idTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Contraseña] [varchar](20) NOT NULL,
	[idTipo] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AreaDeTrabajo] ON 

INSERT [dbo].[AreaDeTrabajo] ([idArea], [Area]) VALUES (1, N'Ecologia')
INSERT [dbo].[AreaDeTrabajo] ([idArea], [Area]) VALUES (2, N'Mina')
SET IDENTITY_INSERT [dbo].[AreaDeTrabajo] OFF
SET IDENTITY_INSERT [dbo].[Cursos] ON 

INSERT [dbo].[Cursos] ([idCurso], [Nombre], [Descripcion], [idTipoCurso]) VALUES (1, N'Consetizacion', N'Consetizacion', 1)
SET IDENTITY_INSERT [dbo].[Cursos] OFF
SET IDENTITY_INSERT [dbo].[Empresas] ON 

INSERT [dbo].[Empresas] ([idEmpresa], [Empresa]) VALUES (1, N'Omimsa')
SET IDENTITY_INSERT [dbo].[Empresas] OFF
SET IDENTITY_INSERT [dbo].[Estado] ON 

INSERT [dbo].[Estado] ([idEstado], [Estado]) VALUES (1, N'Activo')
INSERT [dbo].[Estado] ([idEstado], [Estado]) VALUES (2, N'Inactivo')
SET IDENTITY_INSERT [dbo].[Estado] OFF
SET IDENTITY_INSERT [dbo].[EstadoCivil] ON 

INSERT [dbo].[EstadoCivil] ([idEstadoCivil], [EstadoCivil]) VALUES (1, N'Soltero/a')
INSERT [dbo].[EstadoCivil] ([idEstadoCivil], [EstadoCivil]) VALUES (2, N'Casado/a')
INSERT [dbo].[EstadoCivil] ([idEstadoCivil], [EstadoCivil]) VALUES (3, N'Divorciado/a')
INSERT [dbo].[EstadoCivil] ([idEstadoCivil], [EstadoCivil]) VALUES (4, N'Vuido/a')
SET IDENTITY_INSERT [dbo].[EstadoCivil] OFF
INSERT [dbo].[Personal] ([NumRegistro], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [CURP], [RFC], [NumSeguro], [TelefonoCasa], [TelefonoCelular], [idSexo], [idUsuario], [idEstadoCivil], [LugarDeNacimiento], [FechaDeNacimiento], [Direccion], [idEstado], [Nacionalidad], [CorreoElectronico], [TipoDeSangre], [Edad], [NumExt], [Padecimientos], [Alergias], [NoPoliza], [TipoDePoliza], [Contacto1DeEmergencia], [TelefonoContacto1Emerg], [ParentescoContacto1Emerg], [Contacto2DeEmergencia], [TelefonoContacto2Emerg], [ParentescoContacto2Emerg]) VALUES (12312, N'adaasd', N'ADAasdasd', N'asdsa', N'asdas212', N'dasd2e3', 123, 21314, 123213, 1, NULL, 1, N'asdasd', N'asdadas', N'adasda', 1, N'asdasd', N'sadasas', N'a', 12, 124, N'asdasd', N'adasd', 12123, N'asdasd', N'asdad', 123213, N'ffasda', N'asdad', 12123, N'asdasd')
INSERT [dbo].[Personal] ([NumRegistro], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [CURP], [RFC], [NumSeguro], [TelefonoCasa], [TelefonoCelular], [idSexo], [idUsuario], [idEstadoCivil], [LugarDeNacimiento], [FechaDeNacimiento], [Direccion], [idEstado], [Nacionalidad], [CorreoElectronico], [TipoDeSangre], [Edad], [NumExt], [Padecimientos], [Alergias], [NoPoliza], [TipoDePoliza], [Contacto1DeEmergencia], [TelefonoContacto1Emerg], [ParentescoContacto1Emerg], [Contacto2DeEmergencia], [TelefonoContacto2Emerg], [ParentescoContacto2Emerg]) VALUES (23145, N'asd', N'asdf', N'fasf', N'ads213', N'213sad', 31234, 12341, 12312314, 1, NULL, 1, N'sadas', N'asdasd', N'sadad', 1, N'asdsaf', N'sadafa', N'a+', 44, 3213, N'asdasf', N'asdasd', 23, N'asdad', N'dasd', 123, N'asd', N'asd', 123, N'dfas')
INSERT [dbo].[PersonalCurso] ([idNumRegistro], [Nombre], [Apellido_Paterno], [Apellido_Materno], [CURP], [idPuesto], [idArea], [idEmpresa]) VALUES (21, N'Allan Alexis', N'Valdez', N'Valenzuela', N'123124124', 1, 1, 1)
INSERT [dbo].[PersonalCurso] ([idNumRegistro], [Nombre], [Apellido_Paterno], [Apellido_Materno], [CURP], [idPuesto], [idArea], [idEmpresa]) VALUES (45, N'Juan', N'Perez', N'Lopez', N'ASD234DAS', 2, 2, 1)
INSERT [dbo].[PersonalCurso] ([idNumRegistro], [Nombre], [Apellido_Paterno], [Apellido_Materno], [CURP], [idPuesto], [idArea], [idEmpresa]) VALUES (123, N'Pancho', N'asdad', N'asdasd', N'dasde2112123dd', 2, 2, 1)
INSERT [dbo].[PersonalCurso] ([idNumRegistro], [Nombre], [Apellido_Paterno], [Apellido_Materno], [CURP], [idPuesto], [idArea], [idEmpresa]) VALUES (435, N'Juancho', N'Valverde', N'Rodriguez', N'ASDASDW324513', 1, 2, 1)
INSERT [dbo].[PersonalCurso] ([idNumRegistro], [Nombre], [Apellido_Paterno], [Apellido_Materno], [CURP], [idPuesto], [idArea], [idEmpresa]) VALUES (45666, N'dfsdf', N'sdfsdf', N'sdfsdf', N'sadasdasdqe21313', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Puesto] ON 

INSERT [dbo].[Puesto] ([idPuesto], [Puesto]) VALUES (1, N'Programador')
INSERT [dbo].[Puesto] ([idPuesto], [Puesto]) VALUES (2, N'Operador')
SET IDENTITY_INSERT [dbo].[Puesto] OFF
SET IDENTITY_INSERT [dbo].[RelacionTrabajo] ON 

INSERT [dbo].[RelacionTrabajo] ([idGerencia], [idEmpresas], [idPuesto], [idPersonalCurso], [idRelacionTrabajo]) VALUES (1, 1, 1, 21, 6)
SET IDENTITY_INSERT [dbo].[RelacionTrabajo] OFF
SET IDENTITY_INSERT [dbo].[Sexo] ON 

INSERT [dbo].[Sexo] ([idSexo], [Sexo]) VALUES (1, N'Hombre')
INSERT [dbo].[Sexo] ([idSexo], [Sexo]) VALUES (2, N'Mujer')
SET IDENTITY_INSERT [dbo].[Sexo] OFF
SET IDENTITY_INSERT [dbo].[TipoCurso] ON 

INSERT [dbo].[TipoCurso] ([idTipoCurso], [Tipo]) VALUES (1, N'Seguridad Ambiental')
INSERT [dbo].[TipoCurso] ([idTipoCurso], [Tipo]) VALUES (2, N'Ambiental')
INSERT [dbo].[TipoCurso] ([idTipoCurso], [Tipo]) VALUES (3, N'Ecologia')
SET IDENTITY_INSERT [dbo].[TipoCurso] OFF
SET IDENTITY_INSERT [dbo].[TipoUsuario] ON 

INSERT [dbo].[TipoUsuario] ([idTipoUsuario], [TipoUsuario]) VALUES (1, N'SuperUsuario')
SET IDENTITY_INSERT [dbo].[TipoUsuario] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [Usuario], [Contraseña], [idTipo]) VALUES (2, N'asfasf', N'123412', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[CursoImpartido]  WITH CHECK ADD  CONSTRAINT [FK_CursoImpartido_Cursos] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Cursos] ([idCurso])
GO
ALTER TABLE [dbo].[CursoImpartido] CHECK CONSTRAINT [FK_CursoImpartido_Cursos]
GO
ALTER TABLE [dbo].[CursoImpartido]  WITH CHECK ADD  CONSTRAINT [FK_CursoImpartido_Personal] FOREIGN KEY([idSupervisor])
REFERENCES [dbo].[Personal] ([NumRegistro])
GO
ALTER TABLE [dbo].[CursoImpartido] CHECK CONSTRAINT [FK_CursoImpartido_Personal]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_TipoCurso] FOREIGN KEY([idTipoCurso])
REFERENCES [dbo].[TipoCurso] ([idTipoCurso])
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_TipoCurso]
GO
ALTER TABLE [dbo].[EvaluacionCurso]  WITH CHECK ADD  CONSTRAINT [FK_EvaluacionCurso_CursoImpartido] FOREIGN KEY([idCursoImpartido])
REFERENCES [dbo].[CursoImpartido] ([idCursoImpartido])
GO
ALTER TABLE [dbo].[EvaluacionCurso] CHECK CONSTRAINT [FK_EvaluacionCurso_CursoImpartido]
GO
ALTER TABLE [dbo].[EvaluacionCurso]  WITH CHECK ADD  CONSTRAINT [FK_EvaluacionCurso_PersonalCurso] FOREIGN KEY([idPersonalCurso])
REFERENCES [dbo].[PersonalCurso] ([idNumRegistro])
GO
ALTER TABLE [dbo].[EvaluacionCurso] CHECK CONSTRAINT [FK_EvaluacionCurso_PersonalCurso]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Estado1] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Estado1]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_EstadoCivil] FOREIGN KEY([idEstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([idEstadoCivil])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_EstadoCivil]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Sexo] FOREIGN KEY([idSexo])
REFERENCES [dbo].[Sexo] ([idSexo])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Sexo]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Usuario]
GO
ALTER TABLE [dbo].[PersonalCurso]  WITH CHECK ADD  CONSTRAINT [FK_PersonalCurso_AreaDeTrabajo1] FOREIGN KEY([idArea])
REFERENCES [dbo].[AreaDeTrabajo] ([idArea])
GO
ALTER TABLE [dbo].[PersonalCurso] CHECK CONSTRAINT [FK_PersonalCurso_AreaDeTrabajo1]
GO
ALTER TABLE [dbo].[PersonalCurso]  WITH CHECK ADD  CONSTRAINT [FK_PersonalCurso_Empresas] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[Empresas] ([idEmpresa])
GO
ALTER TABLE [dbo].[PersonalCurso] CHECK CONSTRAINT [FK_PersonalCurso_Empresas]
GO
ALTER TABLE [dbo].[PersonalCurso]  WITH CHECK ADD  CONSTRAINT [FK_PersonalCurso_Puesto] FOREIGN KEY([idPuesto])
REFERENCES [dbo].[Puesto] ([idPuesto])
GO
ALTER TABLE [dbo].[PersonalCurso] CHECK CONSTRAINT [FK_PersonalCurso_Puesto]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoUsuario] FOREIGN KEY([idTipo])
REFERENCES [dbo].[TipoUsuario] ([idTipoUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoUsuario]
GO
/****** Object:  StoredProcedure [dbo].[AgregarTipoCurso]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Agregar nuevo tipo de Tipo de Curso
-- =============================================
CREATE PROCEDURE [dbo].[AgregarTipoCurso] 
	-- Add the parameters for the stored procedure here
	@Tipo varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO TipoCurso(Tipo)
VALUES (@Tipo)
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarCursos]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Buscar Cursos en Especifico por Nombre
-- =============================================
CREATE PROCEDURE [dbo].[BuscarCursos] 
	-- Add the parameters for the stored procedure here
	@Nombre varchar(100)  
	   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        Cursos.idCurso, Cursos.Nombre, Cursos.Descripcion, TipoCurso.Tipo
FROM            Cursos INNER JOIN
                         TipoCurso ON Cursos.idTipoCurso = TipoCurso.idTipoCurso AND Cursos.idTipoCurso = TipoCurso.idTipoCurso
WHERE        (Cursos.Nombre = @Nombre)
	END

GO
/****** Object:  StoredProcedure [dbo].[BuscarTest]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarTest]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        idNumRegistro, Nombre, Apellido_Paterno, Apellido_Materno, CURP, RFC, Seguro, idPuesto, idArea
FROM            PersonalCurso
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarTodos]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[BuscarTodos] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    /* Insert statements for procedure here*/
SELECT        PersonalCurso.idNumRegistro, PersonalCurso.Nombre, PersonalCurso.Apellido_Paterno, PersonalCurso.Apellido_Materno, PersonalCurso.CURP, AreaDeTrabajo.Area, Puesto.Puesto, Empresas.Empresa
FROM            AreaDeTrabajo INNER JOIN
                         PersonalCurso ON AreaDeTrabajo.idArea = PersonalCurso.idArea INNER JOIN
                         Empresas ON PersonalCurso.idEmpresa = Empresas.idEmpresa INNER JOIN
                         Puesto ON PersonalCurso.idPuesto = Puesto.idPuesto
END

GO
/****** Object:  StoredProcedure [dbo].[BusDatEcoMod]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Buscar todos datos que se encuentran personal curso para mostrarlos 
-- =============================================
CREATE PROCEDURE [dbo].[BusDatEcoMod] 
	-- Add the parameters for the stored procedure here
	@idNumRegistro int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT Personal.NumRegistro, Personal.Nombre, Personal.ApellidoPaterno, Personal.ApellidoMaterno, Personal.CURP, Personal.RFC, Personal.NumSeguro, Personal.TelefonoCasa, Personal.TelefonoCelular, Sexo.Sexo, 
       EstadoCivil.EstadoCivil, Personal.LugarDeNacimiento, Personal.FechaDeNacimiento, Personal.Direccion, Estado.Estado, Personal.Nacionalidad, Personal.CorreoElectronico, Personal.TipoDeSangre, Personal.Edad, 
       Personal.NumExt, Personal.Padecimientos, Personal.Alergias, Personal.NoPoliza, Personal.TipoDePoliza, Personal.Contacto1DeEmergencia, Personal.TelefonoContacto1Emerg, Personal.ParentescoContacto1Emerg, 
       Personal.Contacto2DeEmergencia, Personal.TelefonoContacto2Emerg, Personal.ParentescoContacto2Emerg
FROM  Personal INNER JOIN EstadoCivil ON Personal.idEstadoCivil = EstadoCivil.idEstadoCivil INNER JOIN
      Estado ON Personal.idEstado = Estado.idEstado INNER JOIN Sexo ON Personal.idSexo = Sexo.idSexo
WHERE (Personal.NumRegistro = @idNumRegistro)

	
END

GO
/****** Object:  StoredProcedure [dbo].[BusDatEmergEco]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Buscar Datos de Emergencia de Todos los Empleados de Ecologia
-- =============================================
CREATE PROCEDURE [dbo].[BusDatEmergEco] 
	-- Add the parameters for the stored procedure here
	  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        NumRegistro, Nombre, ApellidoPaterno, ApellidoMaterno, NumSeguro, TipoDeSangre, Padecimientos, Alergias, NoPoliza, TipoDePoliza, Contacto1DeEmergencia, TelefonoContacto1Emerg, ParentescoContacto1Emerg, 
                         Contacto2DeEmergencia, TelefonoContacto2Emerg, ParentescoContacto2Emerg
FROM            Personal
END

GO
/****** Object:  StoredProcedure [dbo].[BusDatEspEco]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Buscar datos de emergencia de trabajadores de ecologia en espcifico de un trabajador
-- =============================================
CREATE PROCEDURE [dbo].[BusDatEspEco] 
	-- Add the parameters for the stored procedure here
	@NumRegistro int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        NumRegistro, Nombre, ApellidoPaterno, ApellidoMaterno, NumSeguro, TipoDeSangre, Padecimientos, Alergias, NoPoliza, TipoDePoliza, Contacto1DeEmergencia, TelefonoContacto1Emerg, ParentescoContacto1Emerg, 
                         Contacto2DeEmergencia, TelefonoContacto2Emerg, ParentescoContacto2Emerg
FROM            Personal
WHERE        (NumRegistro = @NumRegistro)
END

GO
/****** Object:  StoredProcedure [dbo].[BusPerCur]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan
-- Create date: 
-- Description:	Buscar personal de curso
-- =============================================
CREATE PROCEDURE [dbo].[BusPerCur] 
	-- Add the parameters for the stored procedure here
	@idNumRegistro int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT        PersonalCurso.idNumRegistro, PersonalCurso.Nombre, PersonalCurso.Apellido_Paterno, PersonalCurso.Apellido_Materno,PersonalCurso.CURP, Puesto.Puesto, AreaDeTrabajo.Area, Empresas.Empresa
FROM            AreaDeTrabajo INNER JOIN
                         PersonalCurso ON AreaDeTrabajo.idArea = PersonalCurso.idArea INNER JOIN
                         Empresas ON PersonalCurso.idEmpresa = Empresas.idEmpresa INNER JOIN
                         Puesto ON PersonalCurso.idPuesto = Puesto.idPuesto
WHERE        (PersonalCurso.idNumRegistro = @idNumRegistro)
END

GO
/****** Object:  StoredProcedure [dbo].[BusTodEco]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Store Procedures para buscar todos los trabajadores de ecologia
-- =============================================
CREATE PROCEDURE [dbo].[BusTodEco] 
	-- Add the parameters for the stored procedure here
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT        Personal.NumRegistro, Personal.Nombre, Personal.ApellidoPaterno, Personal.ApellidoMaterno, Personal.CURP, Personal.RFC, Personal.TelefonoCasa, Personal.TelefonoCelular, Personal.NumSeguro, 
                         Personal.LugarDeNacimiento, Personal.FechaDeNacimiento, Personal.Direccion, Personal.Nacionalidad, Personal.CorreoElectronico, Personal.TipoDeSangre, Personal.Edad, Personal.NumExt, EstadoCivil.EstadoCivil, 
                         Sexo.Sexo, Estado.Estado
FROM            Personal INNER JOIN
                         Sexo ON Personal.idSexo = Sexo.idSexo INNER JOIN
                         Estado ON Personal.idEstado = Estado.idEstado INNER JOIN
                         EstadoCivil ON Personal.idEstadoCivil = EstadoCivil.idEstadoCivil
END

GO
/****** Object:  StoredProcedure [dbo].[BusTraEco]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Buscar Trabajadores en Especifico de Ecologia
-- =============================================
CREATE PROCEDURE [dbo].[BusTraEco] 
	-- Add the parameters for the stored procedure here
	@NumRegistro int  
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        Personal.NumRegistro, Personal.Nombre, Personal.ApellidoPaterno, Personal.ApellidoMaterno, Personal.CURP, Personal.RFC, Personal.NumSeguro, Personal.TelefonoCasa, Personal.TelefonoCelular, Sexo.idSexo, 
                         EstadoCivil.idEstadoCivil, Estado.idEstado, Personal.LugarDeNacimiento, Personal.FechaDeNacimiento, Personal.Direccion, Personal.Nacionalidad, Personal.CorreoElectronico, Personal.TipoDeSangre, Personal.Edad, 
                         Personal.NumExt
FROM            Personal INNER JOIN
                         Estado ON Personal.idEstado = Estado.idEstado INNER JOIN
                         EstadoCivil ON Personal.idEstadoCivil = EstadoCivil.idEstadoCivil INNER JOIN
                         Sexo ON Personal.idSexo = Sexo.idSexo
WHERE        (Personal.NumRegistro = @NumRegistro)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertarPersonalCurso]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 1/5/2018
-- Description:	Insertar PersonalCurso
-- =============================================
CREATE PROCEDURE [dbo].[InsertarPersonalCurso] 
	-- Add the parameters for the stored procedure here
	@NumRegistro int, 
	@Nombre varchar(80),
	@Apellido_Paterno varchar(50),
	@Apellido_Materno varchar(50),
	@CURP varchar(18),
	@idPuesto int,
	@idArea int,
	@idEmpresa int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PersonalCurso (Nombre, Apellido_Paterno, Apellido_Materno, CURP, idPuesto, idArea, idEmpresa)
    VALUES (@Nombre, @Apellido_Paterno, @Apellido_Materno,@CURP,@idPuesto,@idArea,@IdEmpresa)
SELECT        Empresas.Empresa, Puesto.Puesto, AreaDeTrabajo.Area
FROM            AreaDeTrabajo INNER JOIN
                         RelacionTrabajo ON AreaDeTrabajo.idGerencia = RelacionTrabajo.idGerencia INNER JOIN
                         PersonalCurso ON RelacionTrabajo.idPersonalCurso = PersonalCurso.idNumRegistro INNER JOIN
                         Empresas ON RelacionTrabajo.idEmpresas = Empresas.idEmpresa INNER JOIN
                         Puesto ON RelacionTrabajo.idPuesto = Puesto.idPuesto
WHERE        (Empresas.Empresa = @idEmpresa) AND (Puesto.Puesto = @idPuesto) AND (AreaDeTrabajo.Area = @idArea)
END

GO
/****** Object:  StoredProcedure [dbo].[ListadoCursos]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Listado Completo de Todos los cursos que se encuentran
-- =============================================
CREATE PROCEDURE [dbo].[ListadoCursos] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        Cursos.idCurso, Cursos.Nombre, Cursos.Descripcion, TipoCurso.Tipo
FROM            Cursos INNER JOIN
                         TipoCurso ON Cursos.idTipoCurso = TipoCurso.idTipoCurso AND Cursos.idTipoCurso = TipoCurso.idTipoCurso
END

GO
/****** Object:  StoredProcedure [dbo].[ListadoTipoCursos]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Listado de todos los tipos de cursos que se encuentran
-- =============================================
CREATE PROCEDURE [dbo].[ListadoTipoCursos] 
	-- Add the parameters for the stored procedure here
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT        idTipoCurso, Tipo
FROM            TipoCurso
END

GO
/****** Object:  StoredProcedure [dbo].[UpdTraCur]    Script Date: 1/22/2018 8:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 
-- Description:	Update para los trabajadores de cursos
-- =============================================
CREATE PROCEDURE [dbo].[UpdTraCur] 
	-- Add the parameters for the stored procedure here
	@idNumRegistro int,
	@Nombre varchar(80),
	@Apellido_Paterno varchar(50),
	@Apellido_Materno varchar(50),
	@CURP varchar(18),
	@idPuesto int,
	@idArea int,
	@idEmpresa int
	
	   
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE  PersonalCurso
SET Nombre = @Nombre, Apellido_Paterno = @Apellido_Paterno, Apellido_Materno = @Apellido_Materno, CURP = @CURP, idPuesto = @idPuesto, idArea = @idArea, idEmpresa = @idEmpresa
FROM AreaDeTrabajo INNER JOIN PersonalCurso ON AreaDeTrabajo.idArea = PersonalCurso.idArea INNER JOIN Empresas ON PersonalCurso.idEmpresa = Empresas.idEmpresa INNER JOIN Puesto ON PersonalCurso.idPuesto = Puesto.idPuesto
WHERE (PersonalCurso.idNumRegistro = @idNumRegistro)
END

GO
USE [master]
GO
ALTER DATABASE [DBEcologia] SET  READ_WRITE 
GO
