USE [ibrahimDb]
GO
/****** Object:  Table [dbo].[books]    Script Date: 10/3/2019 4:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[DeclareDate] [datetime] NOT NULL,
	[Page] [int] NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_books_BookId] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stadion]    Script Date: 10/3/2019 4:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stadion](
	[ReazervationId] [int] IDENTITY(1,1) NOT NULL,
	[ClientFullName] [nvarchar](50) NOT NULL,
	[ClientNumber] [char](13) NOT NULL,
	[ReazervationDate] [date] NOT NULL,
	[Stadion] [varchar](50) NOT NULL,
	[RezervationStartDate] [datetime] NOT NULL,
	[RezervationEndDate] [datetime] NOT NULL,
	[Payment] [char](7) NOT NULL,
 CONSTRAINT [PK_stadion] PRIMARY KEY CLUSTERED 
(
	[ReazervationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[books] ON 
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (1, N'Ali and Nino', N'Kurban Said', CAST(N'1937-10-07T00:00:00.000' AS DateTime), NULL, N'«Али и Нино» — популярный роман, рассказывающий о любви двух бакинцев')
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (2, N'War and Peace', N'Leo Tolstoy', CAST(N'1869-10-05T00:00:00.000' AS DateTime), 1225, N'«Война́ и мир» — роман-эпопея Льва Николаевича Толстого, описывающий русское общество в эпоху войн против Наполеона в 1805 — 1812 годах.')
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (3, N'Anna Karenina', N'Leo Tolstoy', CAST(N'1877-05-21T00:00:00.000' AS DateTime), 864, N'«А́нна Каре́нина» — роман  о трагической любви замужней дамы Анны Карениной.')
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (4, N'To Kill a MockingbirdL', N'Harper Lee', CAST(N'1960-07-11T00:00:00.000' AS DateTime), 281, N'«Уби́ть пересме́шника» — роман  написанный в жанре воспитательного романа.')
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (5, N'Oblomov', N'Ivan Goncharov', CAST(N'1859-05-12T00:00:00.000' AS DateTime), NULL, N'Роман рассказывает о жизни помещика Ильи Ильича Обломова')
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (6, N'Ulysses', N'James Joyse', CAST(N'1922-02-02T00:00:00.000' AS DateTime), 730, N'«Улисс» — сложное полистилистическое произведение. ')
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (7, N'Catch-22', N'
Joseph Heller', CAST(N'1961-11-10T00:00:00.000' AS DateTime), 453, N'Известен возникшим в нём логическим парадоксом между взаимоисключающими правилами «Уловка-22».')
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (8, N'Animal Farm', N'George Orwell', CAST(N'1945-08-17T00:00:00.000' AS DateTime), 112, N'В повести изображена эволюция состояния животных, изгнавших со скотного двора его предыдущего владельца, жестокого мистера Джонса')
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (10, N'Les Miserables', N'Victor Marie Hugo', CAST(N'1862-04-13T00:00:00.000' AS DateTime), 1000, N'«Отве́рженные» — роман-эпопея французского классика Виктора Гюго.')
GO
INSERT [dbo].[books] ([BookId], [Name], [Author], [DeclareDate], [Page], [Description]) VALUES (11, N'Idiot', N'Fedor Dostoevsky', CAST(N'1868-12-06T00:00:00.000' AS DateTime), 880, N'Является одним из самых любимых произведений писателя, наиболее полно выразившим и нравственно-философскую позицию Достоевского')
GO
SET IDENTITY_INSERT [dbo].[books] OFF
GO
SET IDENTITY_INSERT [dbo].[stadion] ON 
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (1, N'Məmmədov Şahin Həsən oğlu', N'055-322-23-25', CAST(N'2019-09-30' AS Date), N'stadion-A', CAST(N'2019-10-02T15:30:00.000' AS DateTime), CAST(N'2019-10-02T16:30:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (2, N'Həsənov Murad Qalib oğlu', N'050-455-09-65', CAST(N'2019-10-01' AS Date), N'stadion-B', CAST(N'2019-10-01T14:30:00.000' AS DateTime), CAST(N'2019-10-01T15:30:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (3, N'Qəmbərli Hacı Ülvi oğlu', N'077-233-20-21', CAST(N'2019-09-30' AS Date), N'stadion-B', CAST(N'2019-10-01T16:00:00.000' AS DateTime), CAST(N'2019-10-01T17:00:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (4, N'Qurbanov Vüqar Mehdi oğlu', N'055-545-44-09', CAST(N'2019-10-01' AS Date), N'stadion-A', CAST(N'2019-10-01T19:00:00.000' AS DateTime), CAST(N'2019-10-01T20:00:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (5, N'Şirinli Qasım Qabil oğlu', N'070-300-07-87', CAST(N'2019-10-02' AS Date), N'stadion-A', CAST(N'2019-10-03T17:30:00.000' AS DateTime), CAST(N'2019-10-03T18:30:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (6, N'Əliyev Əkbər Ramil oğlu', N'050-440-77-88', CAST(N'2019-10-01' AS Date), N'stadion-B', CAST(N'2019-10-03T21:00:00.000' AS DateTime), CAST(N'2019-10-02T22:00:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (7, N'Əliyev Dadaş Hüseyn oğlu', N'050-205-10-12', CAST(N'2019-10-01' AS Date), N'stadion-B', CAST(N'2019-10-03T18:00:00.000' AS DateTime), CAST(N'2019-10-03T19:00:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (8, N'Ağayev Nicat Natiq oğlu', N'055-880-09-32', CAST(N'2019-10-02' AS Date), N'stadion-A', CAST(N'2019-10-02T21:30:00.000' AS DateTime), CAST(N'2019-10-02T22:30:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (10, N'Quliyev Tural Tofiq oğlu', N'050-244-04-57', CAST(N'2019-10-01' AS Date), N'stadion-A', CAST(N'2019-10-03T19:15:00.000' AS DateTime), CAST(N'2019-10-03T20:15:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (11, N'Ağazadə Rahim Həmid oğlu', N'055-330-99-08', CAST(N'2019-10-03' AS Date), N'stadion-B', CAST(N'2019-10-04T13:30:00.000' AS DateTime), CAST(N'2019-10-04T14:30:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (12, N'İbrahimov Bakir Məmməd oğlu', N'077-440-09-88', CAST(N'2019-10-03' AS Date), N'stadion-A', CAST(N'2019-10-04T14:30:00.000' AS DateTime), CAST(N'2019-10-04T15:30:00.000' AS DateTime), N'50 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (13, N'Muradov Toğrul Saleh oğlu', N'050-650-87-67', CAST(N'2019-10-03' AS Date), N'stadion-A', CAST(N'2019-10-04T16:15:00.000' AS DateTime), CAST(N'2019-10-04T17:30:00.000' AS DateTime), N'60 Azn ')
GO
INSERT [dbo].[stadion] ([ReazervationId], [ClientFullName], [ClientNumber], [ReazervationDate], [Stadion], [RezervationStartDate], [RezervationEndDate], [Payment]) VALUES (14, N'Əmrahov Vüqar İlqar oğlu', N'055-590-09-45', CAST(N'2019-10-02' AS Date), N'stadion-B', CAST(N'2019-10-03T14:30:00.000' AS DateTime), CAST(N'2019-10-03T15:30:00.000' AS DateTime), N'50 Azn ')
GO
SET IDENTITY_INSERT [dbo].[stadion] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [DF_books_Description_Unique]    Script Date: 10/3/2019 4:57:29 PM ******/
ALTER TABLE [dbo].[books] ADD  CONSTRAINT [DF_books_Description_Unique] UNIQUE NONCLUSTERED 
(
	[Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[books] ADD  CONSTRAINT [DF_books_DeclareDate]  DEFAULT (getdate()) FOR [DeclareDate]
GO
