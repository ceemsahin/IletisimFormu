USE [Iletisim]
GO
/****** Object:  Table [dbo].[Iletisim]    Script Date: 5.04.2022 02:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdiSoyadi] [nvarchar](250) NULL,
	[Yaş] [int] NULL,
	[Meslek] [int] NULL,
	[TelefonNo] [nchar](19) NULL,
	[Email] [nvarchar](150) NULL,
	[Konu] [nvarchar](max) NULL,
	[Mesaj] [nvarchar](max) NULL,
 CONSTRAINT [PK_Iletisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meslek]    Script Date: 5.04.2022 02:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meslek](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Meslek] [nvarchar](150) NULL,
 CONSTRAINT [PK_Meslek] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Iletisim] ON 

INSERT [dbo].[Iletisim] ([ID], [AdiSoyadi], [Yaş], [Meslek], [TelefonNo], [Email], [Konu], [Mesaj]) VALUES (1, N'Cem Şahin', 26, 7, N'4848476846         ', N'c@c.com', N'dasdasdasdas', N'dsadasdasdas')
INSERT [dbo].[Iletisim] ([ID], [AdiSoyadi], [Yaş], [Meslek], [TelefonNo], [Email], [Konu], [Mesaj]) VALUES (2, N'Fatih Atlı', 28, 3, N'848415             ', N'f@f.com', N'dasdasd', N'sadsadas')
INSERT [dbo].[Iletisim] ([ID], [AdiSoyadi], [Yaş], [Meslek], [TelefonNo], [Email], [Konu], [Mesaj]) VALUES (3, N'Fethullah Antlı', 32, 4, N'463484             ', N'f@f.com', N'fdasdasdasd', N'adasdas')
INSERT [dbo].[Iletisim] ([ID], [AdiSoyadi], [Yaş], [Meslek], [TelefonNo], [Email], [Konu], [Mesaj]) VALUES (4, N'Doğukan Öztürk', 19, 7, N'46484              ', N'd@d.com', N'dasdasdsdasdas', N'dasdasdasd')
INSERT [dbo].[Iletisim] ([ID], [AdiSoyadi], [Yaş], [Meslek], [TelefonNo], [Email], [Konu], [Mesaj]) VALUES (5, N'Hatice Akcal', 28, 1, N'58464768544        ', N'h@h.com', N'dasdasdasdasd', N'asdasdasdasdsad')
INSERT [dbo].[Iletisim] ([ID], [AdiSoyadi], [Yaş], [Meslek], [TelefonNo], [Email], [Konu], [Mesaj]) VALUES (6, N'Hatice Akcal2', 13, 7, N'56485              ', N'h@h.com', N'Kod nasıl yazılmaz.!!!', N'Iletısım.aspx dosyam nerde ?')
SET IDENTITY_INSERT [dbo].[Iletisim] OFF
GO
SET IDENTITY_INSERT [dbo].[Meslek] ON 

INSERT [dbo].[Meslek] ([ID], [Meslek]) VALUES (1, N'Doktor')
INSERT [dbo].[Meslek] ([ID], [Meslek]) VALUES (2, N'Öğrenci')
INSERT [dbo].[Meslek] ([ID], [Meslek]) VALUES (3, N'Mühendis')
INSERT [dbo].[Meslek] ([ID], [Meslek]) VALUES (4, N'Öğretmen')
INSERT [dbo].[Meslek] ([ID], [Meslek]) VALUES (5, N'Muhasebeci')
INSERT [dbo].[Meslek] ([ID], [Meslek]) VALUES (6, N'Tüccar')
INSERT [dbo].[Meslek] ([ID], [Meslek]) VALUES (7, N'Serbest')
SET IDENTITY_INSERT [dbo].[Meslek] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_Iletisim]    Script Date: 5.04.2022 02:02:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Iletisim]
@AdiSoyadi nvarchar(250),
@Yaş int,
@Meslek nvarchar(150),
@TelefonNo nchar(19),
@Email nvarchar(150),
@Konu nvarchar(MAX),
@Mesaj nvarchar(MAX)

as
begin

insert into Iletisim (AdiSoyadi, Yaş, Meslek, TelefonNo, Email, Konu, Mesaj) values  (@AdiSoyadi, @Yaş, @Meslek, @TelefonNo, @Email, @Konu, @Mesaj) 





end
GO
