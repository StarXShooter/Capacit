USE [master]
GO
/****** Object:  Database [DBEcologia]    Script Date: 1/5/2018 9:34:33 AM ******/
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
/****** Object:  Table [dbo].[AreaDeTrabajo]    Script Date: 1/5/2018 9:34:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreaDeTrabajo](
	[idGerencia] [int] IDENTITY(1,1) NOT NULL,
	[Area] [varchar](55) NOT NULL,
 CONSTRAINT [PK_AreaDeTrabajo] PRIMARY KEY CLUSTERED 
(
	[idGerencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CursoImpartido]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[Cursos]    Script Date: 1/5/2018 9:34:35 AM ******/
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
	[idTipo] [int] NOT NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[Estado]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[EvaluacionCurso]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[Personal]    Script Date: 1/5/2018 9:34:35 AM ******/
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
	[Sexo] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[EstadoCivil] [int] NOT NULL,
	[LugarDeNacimiento] [varchar](50) NULL,
	[FechaDeNacimiento] [varchar](50) NULL,
	[Direccion] [varchar](100) NULL,
	[Estado] [int] NULL,
	[Nacionalidad] [varchar](20) NULL,
	[CorreoElectronico] [varchar](50) NULL,
	[TipoDeSangre] [varchar](4) NULL,
	[Edad] [int] NULL,
	[NumExt] [int] NULL,
	[Padecimientos] [varchar](80) NULL,
	[Alergias] [varchar](80) NULL,
	[NoPoliza] [int] NULL,
	[TipoDePoliza] [varchar](20) NULL,
	[Contacto1DeEmergencia] [varchar](200) NULL,
	[TelefonoContacto1Emerg] [int] NULL,
	[ParentescoContacto1Emerg] [varchar](20) NULL,
	[Contacto2DeEmergencia] [varchar](200) NULL,
	[TelefonoContacto2Emerg] [int] NOT NULL,
	[ParentescoContacto2Emerg] [varchar](20) NULL,
 CONSTRAINT [PK_Personal_1] PRIMARY KEY CLUSTERED 
(
	[NumRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonalCurso]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[Puesto]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[RelacionTrabajo]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[Sexo]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[TipoCurso]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 1/5/2018 9:34:35 AM ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 1/5/2018 9:34:35 AM ******/
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

INSERT [dbo].[AreaDeTrabajo] ([idGerencia], [Area]) VALUES (1, N'Ecologia')
SET IDENTITY_INSERT [dbo].[AreaDeTrabajo] OFF
SET IDENTITY_INSERT [dbo].[Cursos] ON 

INSERT [dbo].[Cursos] ([idCurso], [Nombre], [Descripcion], [idTipo]) VALUES (6, N'CONCIENTIZACION Y POLITICA AMBIENTALf', N'Curso de Induccion y Concientizacion', 1)
SET IDENTITY_INSERT [dbo].[Cursos] OFF
SET IDENTITY_INSERT [dbo].[Empresas] ON 

INSERT [dbo].[Empresas] ([idEmpresa], [Empresa]) VALUES (1, N'Omimsa')
SET IDENTITY_INSERT [dbo].[Empresas] OFF
INSERT [dbo].[PersonalCurso] ([idNumRegistro], [Nombre], [Apellido_Paterno], [Apellido_Materno], [CURP], [idPuesto], [idArea], [idEmpresa]) VALUES (21, N'Allan Alexis', N'Valdez', N'Valenzuela', N'123124124', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Puesto] ON 

INSERT [dbo].[Puesto] ([idPuesto], [Puesto]) VALUES (1, N'Programador')
SET IDENTITY_INSERT [dbo].[Puesto] OFF
SET IDENTITY_INSERT [dbo].[RelacionTrabajo] ON 

INSERT [dbo].[RelacionTrabajo] ([idGerencia], [idEmpresas], [idPuesto], [idPersonalCurso], [idRelacionTrabajo]) VALUES (1, 1, 1, 21, 6)
SET IDENTITY_INSERT [dbo].[RelacionTrabajo] OFF
SET IDENTITY_INSERT [dbo].[TipoCurso] ON 

INSERT [dbo].[TipoCurso] ([idTipoCurso], [Tipo]) VALUES (1, N'Seguridad Ambiental')
SET IDENTITY_INSERT [dbo].[TipoCurso] OFF
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
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_TipoCurso] FOREIGN KEY([idTipo])
REFERENCES [dbo].[TipoCurso] ([idTipoCurso])
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_TipoCurso]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_TipoCurso1] FOREIGN KEY([idTipo])
REFERENCES [dbo].[TipoCurso] ([idTipoCurso])
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_TipoCurso1]
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
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Estado] FOREIGN KEY([Estado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Estado]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_EstadoCivil] FOREIGN KEY([EstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([idEstadoCivil])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_EstadoCivil]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Sexo] FOREIGN KEY([Sexo])
REFERENCES [dbo].[Sexo] ([idSexo])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Sexo]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Usuario]
GO
ALTER TABLE [dbo].[RelacionTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_RelacionTrabajo_AreaDeTrabajo] FOREIGN KEY([idGerencia])
REFERENCES [dbo].[AreaDeTrabajo] ([idGerencia])
GO
ALTER TABLE [dbo].[RelacionTrabajo] CHECK CONSTRAINT [FK_RelacionTrabajo_AreaDeTrabajo]
GO
ALTER TABLE [dbo].[RelacionTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_RelacionTrabajo_Empresas] FOREIGN KEY([idEmpresas])
REFERENCES [dbo].[Empresas] ([idEmpresa])
GO
ALTER TABLE [dbo].[RelacionTrabajo] CHECK CONSTRAINT [FK_RelacionTrabajo_Empresas]
GO
ALTER TABLE [dbo].[RelacionTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_RelacionTrabajo_PersonalCurso] FOREIGN KEY([idPersonalCurso])
REFERENCES [dbo].[PersonalCurso] ([idNumRegistro])
GO
ALTER TABLE [dbo].[RelacionTrabajo] CHECK CONSTRAINT [FK_RelacionTrabajo_PersonalCurso]
GO
ALTER TABLE [dbo].[RelacionTrabajo]  WITH CHECK ADD  CONSTRAINT [FK_RelacionTrabajo_Puesto] FOREIGN KEY([idPuesto])
REFERENCES [dbo].[Puesto] ([idPuesto])
GO
ALTER TABLE [dbo].[RelacionTrabajo] CHECK CONSTRAINT [FK_RelacionTrabajo_Puesto]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoUsuario] FOREIGN KEY([idTipo])
REFERENCES [dbo].[TipoUsuario] ([idTipoUsuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoUsuario]
GO
/****** Object:  StoredProcedure [dbo].[BuscarTest]    Script Date: 1/5/2018 9:34:36 AM ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarTodos]    Script Date: 1/5/2018 9:34:36 AM ******/
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
SELECT        PersonalCurso.idNumRegistro, PersonalCurso.Nombre, PersonalCurso.Apellido_Paterno, PersonalCurso.Apellido_Materno, PersonalCurso.CURP, AreaDeTrabajo.Area, Empresas.Empresa, Puesto.Puesto
FROM            PersonalCurso INNER JOIN
                         RelacionTrabajo ON PersonalCurso.idNumRegistro = RelacionTrabajo.idPersonalCurso INNER JOIN
                         Puesto ON RelacionTrabajo.idPuesto = Puesto.idPuesto INNER JOIN
                         Empresas ON RelacionTrabajo.idEmpresas = Empresas.idEmpresa INNER JOIN
                         AreaDeTrabajo ON RelacionTrabajo.idGerencia = AreaDeTrabajo.idGerencia
END

GO
/****** Object:  StoredProcedure [dbo].[BusPerCur]    Script Date: 1/5/2018 9:34:36 AM ******/
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
	SELECT       PersonalCurso.Nombre AS Expr1, PersonalCurso.Apellido_Paterno, PersonalCurso.Apellido_Materno, PersonalCurso.CURP, PersonalCurso.Seguro, 
                         PersonalCurso.RFC, Empresas.Empresa, AreaDeTrabajo.Area, Cursos.Nombre,Puesto.Puesto, PersonalCurso.idNumRegistro,DATEPART(ISO_WEEK, CURRENT_TIMESTAMP) as NumSemana
FROM            EvaluacionCurso INNER JOIN
                         CursoImpartido ON EvaluacionCurso.idCursoImpartido = CursoImpartido.idCursoImpartido INNER JOIN
                         PersonalCurso ON EvaluacionCurso.idPersonalCurso = PersonalCurso.idNumRegistro INNER JOIN
                         Puesto ON PersonalCurso.idPuesto = Puesto.idPuesto INNER JOIN
                         RelacionTrabajo ON PersonalCurso.idNumRegistro = RelacionTrabajo.idPersonalCurso AND Puesto.idPuesto = RelacionTrabajo.idPuesto INNER JOIN
                         AreaDeTrabajo ON RelacionTrabajo.idGerencia = AreaDeTrabajo.idGerencia INNER JOIN
                         Empresas ON RelacionTrabajo.idEmpresas = Empresas.idEmpresa INNER JOIN
                         Cursos ON CursoImpartido.idCurso = Cursos.idCurso
WHERE        (PersonalCurso.idNumRegistro = @idNumRegistro)
END

GO
USE [master]
GO
ALTER DATABASE [DBEcologia] SET  READ_WRITE 
GO
