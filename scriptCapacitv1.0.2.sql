USE [master]
GO
/****** Object:  Database [DBEcologia]    Script Date: 12/21/2017 9:43:01 AM ******/
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
/****** Object:  Table [dbo].[AreaDeTrabajo]    Script Date: 12/21/2017 9:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreaDeTrabajo](
	[idGerencia] [int] IDENTITY(1,1) NOT NULL,
	[Area] [varchar](55) NOT NULL,
	[Gerencia] [varchar](55) NOT NULL,
 CONSTRAINT [PK_AreaDeTrabajo] PRIMARY KEY CLUSTERED 
(
	[idGerencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CursoImpartido]    Script Date: 12/21/2017 9:43:01 AM ******/
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
/****** Object:  Table [dbo].[Cursos]    Script Date: 12/21/2017 9:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cursos](
	[idCurso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[EvaluacionCurso]    Script Date: 12/21/2017 9:43:01 AM ******/
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
	[Fecha] [date] NOT NULL,
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
/****** Object:  Table [dbo].[Personal]    Script Date: 12/21/2017 9:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personal](
	[idPersonal] [int] IDENTITY(1,1) NOT NULL,
	[NumRegistro] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[ApellidoPaterno] [varchar](30) NOT NULL,
	[ApellidoMaterno] [varchar](30) NOT NULL,
	[CURP] [varchar](18) NOT NULL,
	[RFC] [varchar](13) NOT NULL,
	[NumSeguro] [int] NOT NULL,
	[TelefonoCasa] [int] NULL,
	[TelefonoCelular] [int] NULL,
	[Sexo] [varchar](6) NOT NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[idPersonal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonalCurso]    Script Date: 12/21/2017 9:43:01 AM ******/
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
	[RFC] [varchar](13) NOT NULL,
	[Seguro] [int] NOT NULL,
	[idPuesto] [int] NOT NULL,
	[idArea] [int] NOT NULL,
 CONSTRAINT [PK_PersonalCurso] PRIMARY KEY CLUSTERED 
(
	[idNumRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 12/21/2017 9:43:01 AM ******/
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
/****** Object:  Table [dbo].[TipoCurso]    Script Date: 12/21/2017 9:43:01 AM ******/
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
ALTER TABLE [dbo].[CursoImpartido]  WITH CHECK ADD  CONSTRAINT [FK_CursoImpartido_Cursos] FOREIGN KEY([idCurso])
REFERENCES [dbo].[Cursos] ([idCurso])
GO
ALTER TABLE [dbo].[CursoImpartido] CHECK CONSTRAINT [FK_CursoImpartido_Cursos]
GO
ALTER TABLE [dbo].[CursoImpartido]  WITH CHECK ADD  CONSTRAINT [FK_CursoImpartido_Personal] FOREIGN KEY([idSupervisor])
REFERENCES [dbo].[Personal] ([idPersonal])
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
/****** Object:  StoredProcedure [dbo].[BuscarPersonalCurso]    Script Date: 12/21/2017 9:43:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Allan Valdez
-- Create date: 12/18/2017
-- Description:	BuscarPersonalCurso
-- =============================================
CREATE PROCEDURE [dbo].[BuscarPersonalCurso] 
	-- Add the parameters for the stored procedure here
	@idNumRegistro int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT        PersonalCurso.idNumRegistro, PersonalCurso.Nombre, PersonalCurso.ApellidoPaterno, PersonalCurso.ApellidoMaterno, PersonalCurso.CURP, PersonalCurso.RFC, PersonalCurso.Seguro, AreaDeTrabajo.Area, Puesto.Puesto, 
                         Cursos.Nombre, DATEPART(ISO_WEEK, CURRENT_TIMESTAMP) as NumSemana
FROM            PersonalCurso INNER JOIN
                         Puesto ON PersonalCurso.idPuesto = Puesto.idPuesto INNER JOIN
                         EvaluacionCurso ON PersonalCurso.idNumRegistro = EvaluacionCurso.idPersonalCurso INNER JOIN
                         AreaDeTrabajo ON PersonalCurso.idArea = AreaDeTrabajo.idGerencia AND PersonalCurso.idArea = AreaDeTrabajo.Area AND PersonalCurso.idArea = AreaDeTrabajo.Area INNER JOIN
                         CursoImpartido ON EvaluacionCurso.idCursoImpartido = CursoImpartido.idCursoImpartido INNER JOIN
                         Cursos ON CursoImpartido.idCurso = Cursos.idCurso
WHERE        (PersonalCurso.idNumRegistro = @idNumRegistro)
GROUP BY PersonalCurso.idNumRegistro, PersonalCurso.Nombre, PersonalCurso.ApellidoPaterno, PersonalCurso.ApellidoMaterno, PersonalCurso.CURP, PersonalCurso.RFC, PersonalCurso.Seguro, AreaDeTrabajo.Area, Puesto.Puesto, 
                         Cursos.Nombre
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarTest]    Script Date: 12/21/2017 9:43:01 AM ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarTodos]    Script Date: 12/21/2017 9:43:01 AM ******/
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

    -- Insert statements for procedure here
	SELECT        PersonalCurso.idNumRegistro, PersonalCurso.Nombre, PersonalCurso.ApellidoPaterno, PersonalCurso.ApellidoMaterno, PersonalCurso.CURP, PersonalCurso.RFC, PersonalCurso.Seguro, AreaDeTrabajo.Area, Puesto.Puesto, 
                         Cursos.Nombre, DATEPART(ISO_WEEK, CURRENT_TIMESTAMP) as NumSemana
FROM            PersonalCurso INNER JOIN
                         Puesto ON PersonalCurso.idPuesto = Puesto.idPuesto INNER JOIN
                         EvaluacionCurso ON PersonalCurso.idNumRegistro = EvaluacionCurso.idPersonalCurso INNER JOIN
                         AreaDeTrabajo ON PersonalCurso.idArea = AreaDeTrabajo.idGerencia AND PersonalCurso.idArea = AreaDeTrabajo.Area AND PersonalCurso.idArea = AreaDeTrabajo.Area INNER JOIN
                         CursoImpartido ON EvaluacionCurso.idCursoImpartido = CursoImpartido.idCursoImpartido INNER JOIN
                         Cursos ON CursoImpartido.idCurso = Cursos.idCurso
END

GO
USE [master]
GO
ALTER DATABASE [DBEcologia] SET  READ_WRITE 
GO
