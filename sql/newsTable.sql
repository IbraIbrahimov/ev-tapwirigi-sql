USE [NewsDb]
GO
/****** Object:  Table [dbo].[Category_table]    Script Date: 10/3/2019 5:02:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_table](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News_table]    Script Date: 10/3/2019 5:02:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News_table](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [nvarchar](150) NOT NULL,
	[NewsImg] [nvarchar](max) NULL,
	[NewsSharingDate] [datetime] NOT NULL,
	[NewsCategoryID] [tinyint] NOT NULL,
	[NewsText] [nvarchar](max) NOT NULL,
	[NewsAuthor] [nvarchar](50) NOT NULL,
	[NewsSource] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_News_table] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[VwNews]    Script Date: 10/3/2019 5:02:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VwNews] as
SELECT [NewsId]
      ,[NewsTitle]
      ,[NewsImg]
      ,[NewsSharingDate]
      --[NewsCategoryID]
	  ,Category_table.[Name] as [Category]
      ,[NewsText]
      ,[NewsAuthor]
      ,[NewsSource]
  FROM [NewsDb].[dbo].[News_table]
  join Category_table on News_table.NewsCategoryID=Category_table.id
GO
/****** Object:  View [dbo].[VwTodayNews]    Script Date: 10/3/2019 5:02:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[VwTodayNews] as

SELECT [NewsId]
      ,[NewsTitle]
      
      ,[NewsSharingDate]
      --,[NewsCategoryID]
	  ,Category_table.[Name] [Category]
     
  FROM [dbo].[News_table]
  join Category_table on News_table.NewsCategoryID=Category_table.id


GO
SET IDENTITY_INSERT [dbo].[Category_table] ON 
GO
INSERT [dbo].[Category_table] ([id], [Name]) VALUES (1, N'Siyasət')
GO
INSERT [dbo].[Category_table] ([id], [Name]) VALUES (2, N'İdman')
GO
INSERT [dbo].[Category_table] ([id], [Name]) VALUES (3, N'İqtisadiyyat')
GO
INSERT [dbo].[Category_table] ([id], [Name]) VALUES (4, N'Mədəniyyət')
GO
INSERT [dbo].[Category_table] ([id], [Name]) VALUES (5, N'Kriminal')
GO
SET IDENTITY_INSERT [dbo].[Category_table] OFF
GO
SET IDENTITY_INSERT [dbo].[News_table] ON 
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (1, N'Arkadi Mamontov: Vladimir Putinin İlham Əliyevlə dostluğu təsadüfi deyil', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDMvMTEvNDkvMjgvZTI4YzQ2YTItZTczMi00NWMzLTgyMDEtNjk3NDQ0NDhjYjk3LzE1NzAwODQyNDNfYV9tYW1vbnRvdi5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQ2NVx1MDAzZSJdXQ?sha=6beba24ff5c1f39d', CAST(N'2019-10-03T13:16:00.000' AS DateTime), 1, N'Arkadi Mamontov: Vladimir Putinin İlham Əliyevlə dostluğu təsadüfi deyil', N'Media.az', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (2, N'Əmanətlərin Sığortalanması Fondu beynəlxalq təşkilatlarla əməkdaşlığı genişləndirir', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDIvMTQvMDIvNDkvMjQ5M2FhZDQtMTY5MC00NWQzLTkwODEtMTRkODhmOWQ3MWZkL8mZbWFuyZl0LmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI2MjB4NDY1XHUwMDNlIl1d?sha=fcc0362a65fef3c3', CAST(N'2019-10-02T14:09:00.000' AS DateTime), 3, N'Əmanətlərin Sığortalanması Fondunun nümayəndələri 2019-cu ilin sentyabr ayı ərzində bir sıra beynəlxalq tədbirlərdə iştirak ediblər. 

Fondun nümayəndələri 18-20 sentyabr 2019-cu il tarixlərində Əmanət Sığortaçılarının Beynəlxalq Assosiasiyasının (İADİ) Asiya-Sakit Okean Regional Komitəsinin Koreya Respublikasının Seul şəhərində təşkil etdiyi Təhsil proqramında iştirak ediblər.

Səfər çərçivəsində iqtisadi böhran və böhrandan çıxış yolları, maliyyə sabitliyinin qorunması, əmanətlərin sığortalanması sisteminin maliyyə sabitliyinə töfhəsi, bu sahədə informasiya texnologiyaları sistemində yeniliklər müzakirə edilib. 

Bundan əlavə, 2019-cu ilin 25-28 sentyabr tarixlərində Əmanətlərin Sığortalanması Fondunun nümayəndələri Bosniya və Herseqovinanın Sarayevo şəhərində Avropa Əmanət Sığortaçılarının Forumunun (EFDI) illik toplantısında iştirak ediblər.

Keçirilən toplantıda Avropa ölkələrinin əmanətlərin sığortalanması fondlarının nümayəndələri risk əsaslı ödənişlərin tətbiqi, əmanətlərin sığortalanması prinsiplərini müzakirə ediblər, EFDI-nin İdarə Heyətinə seçkilər keçirilib, təşkilatın büdcəsi təsdiq edilib.

Maliyyə Sektorunun Müasirləşdirilməsi Layihəsinin ikinci fazası çərçivəsində Dünya Bankının və İsveçrənin İqtisadi Məsələlər Üzrə Dövlət Katibliyinin Bakıda səfərdə olan nümayəndə heyətləri ilə 16-26 sentyabr 2019-cu il tarixlərində əmanətlərin sığortalanması sistemi barədə geniş müzakirələr keçirilib. 

Müzakirələrdə Əmanətlərin Sığortalanması Fondunun fəaliyyəti, gələcək inkişaf modeli və hədəfləri; bankların ləğv olunması və əmanətlərin sığortalanması sahəsində potensialın gücləndirilməsi, bu sahədə qanunvericilikdə dəyişikliklər müzakirə edilib.', N'Müşviq Qəmbərli', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (3, N'Azərbaycan Beynəlxalq Valyuta Fondunun reytinqində ilk onluğa düşdü', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDIvMTIvMDAvNDcvZWQ4NDZjYTQtNzllYS00ZjQ3LWIzNTItMjMzM2RlZjMwZjYwL0ludGVybmF0aW9uYWwtTW9uZXRhcnktRnVuZC0uanBnIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODAiXSxbInAiLCJ0aHVtYiIsIjYyMHg0NjVcdTAwM2UiXV0?sha=ca581d70cf24d05d', CAST(N'2019-10-02T11:48:00.000' AS DateTime), 3, N'Azərbaycan xarici dövlət borcunun ümumi daxili məhsula (ÜDM) nisbətində azlığına görə ilk onluğa düşən ölkələr siyahısındadır.

Oxu.Az-ın xəbərinə görə, bu barədə Beynəlxalq Valyuta Fondunun açıqlamasında bildirilib.

Qeyd olunub ki, Azərbaycanın xarici borcunun ÜDM-ə nisbəti 17.6 faiz təşkil edir. Azərbaycan bu göstəriciyə görə doqquzuncu yerdə qərarlaşıb.

Siyahıda birinci yer isə Honkonqa məxsusdur. İkinci yerdə olan Bruneyin xarici borcunun ÜDM-ə nisbəti 2.6 faizdir.

Bu göstəricilər Əfqanıstanda 6.9, Estoniyada 7.6, Botsvanada isə 12.8, Rusiyada 13.8, Konqoda 14, Solomon adalarında isə 14.6, Küveytdə isə 17.8 faizdir.

Qeyd edək ki, Azərbaycan Maliyyə Nazirliyinin açıqladığı son rəqəmlərə görə, Azərbaycanın xarici dövlət borcu 8 milyard 920 milyon ABŞ dollardır.', N'Ayaz Qurbanov', N'media.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (4, N'Teymur Rəcəbov bu gün Rusiyada 110 min dollar qazana bilər', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDMvMTEvMzAvMDMvNDI4MTcxNWYtNWUzOC00NGJmLWI1NWQtMmNlNTY2MzhmM2RiL0RTQzAxNDY1LmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI2MjB4NDY1XHUwMDNlIl1d?sha=285c7cd9c21bb4d3', CAST(N'2019-10-03T14:17:00.000' AS DateTime), 2, N'Azərbaycan şahmatçısı Teymur Rəcəbov Rusiyanın Xantı-Mansiysk şəhərindəki Dünya Kubokunun finalında çinli Dinq Lirenlə dördüncü görüşünə çıxacaq.

Oxu.Az xəbər verir ki, 32 yaşlı qrossmeysterimiz dünya reytinqinin üçüncü şahmatçısı olan rəqibi ilə qara fiqurlarla oynayacaq.

Son üç görüşdə tərəflər hərəyə bir qələbə qazanıb, bir partiya isə heç-heçə bitib. Hazırda tərəflər arasında ümumi hesab bərabərdir – 1,5:1,5.

Bugünkü görüş sonuncu ola da bilər, olmaya da. Qalib müəyyənləşməsə, sabah həlledici görüşdə – tay-breykdə tərəflər güclü ağıl zəkası olduğunu sübut etməyə çalışacaq. 

Qeyd edək ki, yarışın mükafat fondu 1,6 milyon dollardır. Teymur Rəcəbov qalib gələcəyi halda, 110 min dollar qazanacaq. Uduzacağı halda isə 80 min dollarla kifayətlənəcək.

Onu da bildirək ki, üçüncü yer uğrunda görüşdə fransız Maksim Vaşye-Laqravla çinli Yuy Yanla qarşılaşacaq. Maraqlıdır ki, burda da ümumi hesab bərabərdir – 1,5:1,5.', N'Səbuhi Musayev', N'media.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (5, N'Ronaldu yenə birinci yerə çıxdı', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDIvMDQvNTEvMDkvODU1Y2VkMGUtZTYxYi00MTMzLWIyN2EtN2U3ZjVkOTFlNjIzL9GA0L7QvdCw0LvQtNGDLdGO0LLQtS5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQ2NVx1MDAzZSJdXQ?sha=a5c9a1551747de57', CAST(N'2019-10-02T04:07:00.000' AS DateTime), 2, N'İtaliyanın “Yuventus” futbol klubunun hücumçusu Kriştianu Ronaldu Çempionlar Liqasının matçlarında qələbələrin sayına görə birinci yerə çıxıb.

“Sport-Express” xəbər verir ki, portuqaliyalı hücumçunun turnir üzrə hesabında 102 qələbə var.

Ronaldu bu göstərici ilə İker Kasilyası (101 qələbə) keçib. Siyahıda üçüncü yerdə Xavi Lopez (91 qalibiyyət), dördüncü yerdə isə Lionel Messi (80) qərarlaşıb.

Oktyabrın 1-də Çempionlar Liqasının qrup mərhələsinin ikinci turu çərçivəsində Turin klubu öz meydanında Almaniyanın “Bayer” komandasına 3:0 hesabı ilə qalib gəlib. “Yuventus”un qollarından birini 89-cu dəqiqədə Kriştianu Ronaldu vurub.', N'Vüsal Salahov', N'sportexpress.com')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (6, N'Özbəkistan Prezidenti Bakıya gəlir', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDMvMTAvMzUvNTYvMTY1Y2JiZGMtYTExNi00NDIyLWE0ZTAtNjMxMDMwMGJhYTNjL2U5ZGI5Zjk4NjM1M2Y5NTlhMzA3OTQ5YjdhY2E1MTQyLmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI2MjB4NDY1XHUwMDNlIl1d?sha=41531b05050192fb', CAST(N'2019-10-03T10:36:00.000' AS DateTime), 1, N'Özbəkistan Prezidenti Şavkat Mirziyoyev oktyabrın 15-də Türk Şurasının Bakıda keçiriləcək 7-ci Zirvə görüşündə iştirak edəcək.

Oxu.Az-ın xəbərinə görə, bunu Türk Şurasının Baş katibinin müavini Qismət Gözəlov Naxçıvan müqaviləsinin 10 illiyi ilə bağlı keçirilən beynəlxalq konfransda deyib.

Onun sözlərinə görə, türkdilli dövlətlərin nazirlikləri və qurumları arasında 30-a yaxın saziş imzalanıb. 

Q.Gözəlov əlavə edib ki, Türk Şurasının Bakıda keçiriləcək sammitində kiçik və orta sahibkarlığa dəstək ifadə olunacaq.', N'Aqşin Kərimov', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (7, N'“Kurtlar Vadisi”nin məşhur aktyoru vəfat etdi', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDEvMTQvMTkvMTUvZDI1NzA4MjAtYmE3Ny00ZTIwLTgzZjUtY2VjYTE4NDlmOTA1L1RhcsSxay3DnG5sw7xvxJ9sdS3DnG5hbC1CZXktRcWfa8SxeWFkYW4tYXlyxLFsZMSxLmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI2MjB4NDY1XHUwMDNlIl1d?sha=21414dc2a8c26e77', CAST(N'2019-10-01T14:22:00.000' AS DateTime), 4, N'Türkiyənin tanınmış aktyoru Tarık Ünlüoğlu vəfat edib. 

Bununla bağlı “HaberGlobal” məlumat yayıb.

61 yaşında vəfat edən aktyor bir müddət idi ki, xəstəxanada xərçəng xəstəliyindən müalicə alırdı.  

Qeyd edək ki, aktyor “Kurtlar Vadisi” və “Eşkiya dünyaya hükümdar olmaz” teleserialları ilə məşhurlaşıb.', N'Sevinc Yasinqızı', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (9, N'Yeni fond yaradıldı - Baş nazirdən qərar', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDIvMDkvMDkvMTMvMWM4MjMzOWItMGUwOC00ZTgxLWE1ZTItOWM3MDcxNjlkNzcyL25vdnJ1ei1tZW1tZWRvdi1iYW5rZXIuYXpfLTY5NngzOTIuanBnIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODAiXSxbInAiLCJ0aHVtYiIsIjYyMHg0NjVcdTAwM2UiXV0?sha=ee74110f0d15e4a2', CAST(N'2019-10-02T09:14:00.000' AS DateTime), 3, N'Nazirlər Kabineti “Dövlət Əməyin Mühafizəsi Fondunun yaradılması və Əsasnaməsinin təsdiq edilməsi haqqında” qərar verib.

Oxu.Az-ın xəbərinə görə, bununla bağlı Baş nazir Novruz Məmmədov qərar imzalayıb.

Əsasnamə Dövlət Əməyin Mühafizəsi Fondunun idarə olunması və onun vəsaitlərindən istifadə edilməsi qaydalarını tənzimləyir.

Fondun məqsədi ölkədə əməyin mühafizəsi sahəsində vahid dövlət siyasətinə uyğun olaraq həyata keçirilən əməyin mühafizəsi tədbirlərinə maddi-texniki dəstək verməkdən ibarətdir.

Fondun idarə edilməsi  Əmək və Əhalinin Sosial Müdafiəsi Nazirliyi tərəfindən həyata keçirilir.

Fondun vəsaiti aşağıdakı mənbələr hesabına formalaşdırılır:

- istehsalatda bədbəxt hadisələr və peşə xəstəlikləri nəticəsində peşə əmək qabiliyyətinin itirilməsi hallarından icbari sığortanı həyata keçirən sığortaçıların könüllü ödəmələrindən;

- müəssisələrin və vətəndaşların könüllü ödəmələrindən və başqa ödəmələrdən.

- Fondun vəsaiti Nazirliyin büdcədənkənar xüsusi xəzinə hesabında yığılır və nazirlik bu vəsaitlər üzərində sərəncam verir.

Maliyyə ilinin sonuna Fondun hesabında qalan xərclənməmiş vəsait növbəti ilin xərclərinin maliyyələşdirilməsinə yönəldilir və bu Əsasnaməyə uyğun olaraq istifadə edilir.  Fondun vəsaiti Azərbaycan manatı və xarici valyutalarla formalaşdırılır. Fondun vəsaiti bu Əsasnamədə nəzərdə tutulmayan məqsədlərə istifadə edilə bilməz.

Fondun vəsaitindən aşağıdakı istiqamətlərdə istifadə olunur:

- əməyin mühafizəsi üzrə elmi tədqiqat işlərinin maliyyələşdirilməsinə;

- əməyin mühafizəsi üzrə mütəxəssislərin hazırlanmasına;

- əməyin mühafizəsi normaları, standartları və qaydalarının hazırlanmasına;

- əməyin mühafizəsi sahəsində təbliğat və maarifləndirmə işlərinə;

- əməyin mühafizəsi sahəsində fəaliyyət göstərən dövlət orqanlarının maddi-texniki bazasının yaradılmasına və inkişafına (o cümlədən, texnoloji qurğuların, cihazların, avadanlıqların, nəqliyyat vasitələrinin, qeyri-maddi aktivlərin, mal-materialların və ləvazimatların alınmasına, əsaslı və cari təmirinə);

- əməyin mühafizəsi sahəsində nəzarət və monitorinqlərin təşkilinə və həyata keçirilməsinə;

- Nazirliyin işçilərinin kollektiv və ya fərdi qaydada mükafatlandırılmasına;

-əmək münasibətləri, məşğulluq, sosial müdafiə və təminat sahəsində dövlət və regional proqramların hazırlanmasına və yerinə yetirilməsinə. 

Fondun vəsaitlərindən istifadə olunması haqqında ilin yekunlarına görə hesabat Nazirlik tərəfindən hazırlanaraq, Maliyyə Nazirliyinə təqdim olunur.

Fondda olan vəsaitlərdən səmərəli istifadə olunmasına Nazirlik və Maliyyə Nazirliyi tərəfindən nəzarət edilir.

Qeyd edək ki, qərar Prezidentin 2019-cu il 24 iyul tarixli 1347 nömrəli sərəncamının 1.3-cü bəndinin icrasını təmin etmək məqsədilə verilib.', N'Aqşin Kərimov', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (10, N'Lavrov Paşinyanın Qarabağla bağlı bəyanatını tənqid etdi ', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDMvMTAvMjIvMTQvM2M2YzMyZTctMjZmYi00NTQ5LTliZDktNWE1NThkYTNlOWVlL19ST005MjIzLmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI2MjB4NDY1XHUwMDNlIl1d?sha=46887cf0ab7c83eb', CAST(N'2019-10-02T18:03:00.000' AS DateTime), 1, N'Rusiyanın Xarici İşlər naziri Sergey Lavrov “Valday” beynəlxalq diskussiya klubunun iclasında Dağlıq Qarabağ münaqişəsindən söz açıb.

S.Lavrov bildirib ki, son dövrlər təmas xəttində sakitlikdir və insidentlər azalıb.

Rusiya XİN başçısı qeyd edib ki, həlak olanların meyitləri mübadilə olunub.

“Hazırda saxlanılan şəxslərin də mübadiləsi üçün hazırlıq gedir. Çox az sayda olsa da, bu prosesə start verilib”, - deyə S.Lavrov əlavə edib.

Bölgədə vəziyyətin sakit olduğunu vurğulayan S.Lavrov onu da bildirib ki, buna baxmayaraq, siyasi proses dayanıb.

“Bu prosesi yerindən tərpətmək alınmır. Əlaqələr var, amma nizamlama ilə bağlı dialoq hələlik bərpa olunmayıb. Amma mən bu halda irimiqyaslı əməliyyatların başlaması üçün hər hansı bir aşkar və ya qeyri-aşkar təhdid görmürəm”.

O qeyd edib ki, Rusiya Qarabağ cəbhəsində sabitliyin pozulmaması üçün əlindən gələni edəcək.

S.Lavrov ATƏT-in Minsk Qrupunun həmsədrlərinin (Rusiya, ABŞ, Fransa) yaxından işlədiyini  də qeyd edib.

S.Lavrov Ermənistanın Baş naziri Nikol Paşinyanın “Qarabağ Ermənistandır” bəyanatını da tənqid edib:

“Albaniyanın Baş naziri “Kosova Albaniyadır” elan etməsi kimi, “Qarabağ da Ermənistandır” demək siyasi prosesin yenidən başlaması üçün şəraitin yaradılmasına kömək etmir. Amma biz həmsədrlər sülh üzərində işləyirik. Biz istəyirik ki, dəfələrlə müzakirə olunan əsas prinsiplər əsasında həll yolunu tapaq”.', N'Aqşin Kərimov', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (11, N'Leyla Əliyeva “Nəsimi Əlyazmaları dünya kitabxanalarında” adlı sərginin açılışında', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMDkvMjcvMjIvMDYvNTkvMmMwN2MxMWQtMDAwYS00ODI4LThkYTQtMWExNDdiN2ExNWM4L3dfMTYxNTY5NjAwNjI5Mjg5NTEzMTYwNF8xMDAweDY2OS5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQ2NVx1MDAzZSJdXQ?sha=81be75f2aae0526a', CAST(N'2019-09-27T22:21:00.000' AS DateTime), 4, N'Sentyabrın 27-də M.F.Axundzadə adına Azərbaycan Milli Kitabxanasında “Nəsimi Əlyazmaları dünya kitabxanalarında” adlı kitab sərgisinin açılış mərasimi olub.

“Mədəni sərvətlərimizin vətənə qayıdışı” layihəsi çərçivəsində təşkil olunan sərgi Bakı VI Beynəlxalq Kitab Sərgi-Yarmarkası çərçivəsində reallaşıb.

Sərginin açılış mərasimində Heydər Əliyev Fondunun vitse-prezidenti Leyla Əliyeva da iştirak edib.

Mədəniyyət naziri Əbülfəs Qarayev tədbirdə çıxış edərək sərgi haqqında ətraflı məlumat verib. Bildirib ki, sərgidə Şərqin böyük mütəfəkkiri İmadəddin Nəsiminin yaradıcılığına həsr olunmuş əlyazmaların surətləri yer alır. Bu kitablar dünyanın müxtəlif aparıcı kitabxanalarından əldə olunaraq Milli Kitabxananın arsenalına daxil edilib. Sərgi ölkəmizdə VI dəfə təşkil edilən kitab sərgi-yarmarkası çərçivəsində açılıb. Bu gün kitab və kitabxana işinə ölkəmizdə lazımi səviyyədə dövlət tərəfindən diqqət göstərilir. Azərbaycanda belə sərgi-yarmarkaların keçirilməsi artıq ənənə halını alıb.

Nazir vurğulayıb ki, İmadəddin Nəsiminin anadan olmasının 650 illiyi Prezident İlham Əliyevin müvafiq Sərəncamı ilə ölkəmizdə müxtəlif tədbirlərlə qeyd olunur. Həmçinin dövlət başçısının daha bir Sərəncamı ilə 2019-cu il ölkəmizdə “Nəsimi ili” elan edilib. Prezidentin İmadəddin Nəsiminin yubileyinin keçirilməsi haqqında Sərəncamının icrasını təmin etmək məqsədilə Mədəniyyət Nazirliyinin əmri ilə tədbirlər planı hazırlanıb. Görkəmli şairin 650 illik yubileyi öncəsi, ötən il ədəbi-mədəni mühitdə geniş rezonans doğuran əhəmiyyətli bir layihə - Heydər Əliyev Fondunun vitse-prezidenti Leyla Əliyevanın təşəbbüsü ilə Azərbaycanda ilk dəfə olaraq Nəsimi – şeir, sənət və mənəviyyat festivalı keçirilib. Bir gün sonra təşkil ediləcək növbəti eyniadlı festival yubiley ilinin ən yaddaqalan tədbirlərindən olacaq. Buna görə də “Nəsimi Əlyazmaları dünya kitabxanalarında” sərgisi Mədəniyyət Nazirliyinin ikinci dəfə keçiriləcək “Nəsimi - şeir, incəsənət və mənəviyyat” beynəlxalq festivalına hədiyyəsidir.

Nazir Heydər Əliyev Fondunun vitse-prezidenti Leyla Əliyevanın ölkənin ən böyük kitabxanasına gəlişini Fond tərəfindən kitaba, mütaliəyə və oxu mədəniyyətinə göstərilən diqqətin göstəricisi kimi qiymətləndirib.

Milli Kitabxananın direktoru Kərim Tahirov kitabxana barədə məlumatların, üç dildə çap olunmuş, ana haqqında şeirlərin yer aldığı kitabları Leyla Əliyevaya təqdim edib.

Sonra qonaqlar sərgi ilə tanış olublar.

Həmçinin Leyla Əliyevanın iştirakı ilə Milli Kitabxanada beynəlxalq əməkdaşlıq zalının da açılışı olub.

Açılışda 13 ölkənin Azərbaycandakı diplomatik nümayəndələrinin və kitabxanaların rəhbərləri də iştirak ediblər. Məlumat verilib ki, bu zalda həmin ölkələrin ədəbiyyat guşələri və kitabxanaları ilə birbaşa internet əlaqəsi yaradaraq faydalanmaq mümkündür.', N'Gülnarə Türksoy', N'media.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (12, N'İlham Əliyev onları təltif etdi', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDEvMTcvNTAvMTYvMTk2MzRkMjctYTJiOS00MjIyLTgyNzYtODYyM2M2NzYyZjBhLzJlNzE0YTZjLTQ2NTctNDhlNS04MGJkLWNkOTRkN2Q4NTUyN180XzcwMHgzOTAuanBnIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODAiXSxbInAiLCJ0aHVtYiIsIjYyMHg0NjVcdTAwM2UiXV0?sha=ec81c96810aba261', CAST(N'2019-10-01T17:49:00.000' AS DateTime), 1, N'Azərbaycan Respublikası Prezidenti İlham Əliyev Azərbaycan Milli Elmlər Akademiyasının Yusif Məmmədəliyev adına Neft-Kimya Prosesləri İnstitutunun əməkdaşlarının “Tərəqqi” medalı ilə təltif edilməsi haqqında sərəncam imzalayıb. 

Sərəncama əsasən, Azərbaycanda neft-kimya elminin inkişafındakı xidmətlərinə görə aşağıda adları çəkilən şəxslər “Tərəqqi” medalı ilə təltif ediliblər:

Əliyeva Leylufər İmran qızı

Hacıyev Arif Şahmalı oğlu

Məmmədbəyli Eldar Hüseynqulu oğlu

Səidova Adilə Atakişi qızı

Süleymanov Samir Süleyman oğlu.', N'Bayram Qurbanov', N'medi.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (13, N'“Azərbaycan naxışları” sərgisi açıldı', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMDkvMjUvMTAvMzcvMzMvMjU0ZWFiMDAtZDYxNC00NTdhLWEzZjktNGI2YzU0ZDQxNjY4L3Jlc20gMS5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQ2NVx1MDAzZSJdXQ?sha=586bb45c0e389663', CAST(N'2019-09-25T11:17:00.000' AS DateTime), 4, N'Azərbaycan Rəssamlar İttifaqının Vəcihə Səmədova adına sərgi salonunda rəssam Əli Əliyevin “Azərbaycan naxışları” adlı fərdi rəsm sərgisi açılıb.

Oxu.Az-ın mlumatına görə, sərgidə rəssamın 90-a qədər sənət əsəri yer alıb. 

Sərgi Mədəniyyət Nazirliyinin dəstəyi, Azərbaycan Rəssamlar İttifaqının təşkilatçılığı ilə keçirilib.

Tədbirdə çıxış edən Ə.Əliyev bildirib ki, işləri əsasən natürmort-mənzərə janrında iriölçülü kompozisiyalardır:

“Bu kompozisiyalar əsasən milli məişət üslubunda, etnoqrafik səpkidə, real və özünəməxsus janrdadır. Qrafika, qrafiki dizayn, illüstrasiya, kitab-jurnal tərtibatı janrlarında, eləcə də müxtəlif monumental dizayn və tərtibat sahələrində çalışıram. Əsərlərim bəzi dövlət idarələri və şəxsi kolleksiyalarda saxlanılır”.

Tədbirdə Azərbaycan Rəssamlar İttifaqının katibi, Xalq rəssamı Ağaəli İbrahimov rəssamın yaradıcılığından və sərginin əhəmiyyətindən söz açıb:

“Bu gün Əli Əliyevin sayca ikinci olan bu fərdi sərgisində maraqlı əsərlər yer alır. Bu əsərlərin içində təbiət mövzusunda natürmortlar da var. Rəssamın burada nümayiş olunan rəngkarlıq janrında olan əsərləri onun yaradıcılıq və sənətə olan bağlılığını əyani şəkildə göstərir”.

Əməkdar incəsənət xadimi Ziyadxan Əliyev sərgidə təqdim olunan sənət əsərlərinin məna və məzmun baxımından dolğun olduğunu qeyd edib:

“Rəssamın ənənəvi qəbul olunan, müasirliklə əlaqəli olan əsərləri zəngin yaradıcılığı özündə ehtiva edir. O, natürmortla ən dərin və mükəmməl mövzuları əhatə edir. Ona yeni yaradıcılıq uğurları arzulayır, sərgi münasibətilə təbrik edirəm”.

Əməkdar incəsənət xadimləri Rafiq Kərimov və Bakı İncəsənət Mərkəzinin rəhbəri Rafael Gülməmmədov çıxış edərək rəssamın yaradıcılığından bəhs edib, ona yeni yaradıcılıq uğurları arzulayıblar. 

Daha sonra qonaqlar sərgi ilə tanış olublar. Sərgi bir həftə ziyarətçilər üçün açıq olacaq.', N'Saleh Balayev', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (14, N'Bərdədə su kanalından kişi meyiti tapıldı', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDMvMTEvMjEvMDEvY2Y4MzBlMTQtYWVjYy00NWQxLTg5YmMtZTAyNDg2NWFjYTg0L2IxLmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI1OTB4NTkwXHUwMDNlIl0sWyJwIiwid2F0ZXJtYXJrIl1d?sha=cef0f5a306e265e8', CAST(N'2019-10-03T11:40:00.000' AS DateTime), 5, N'Bərdə rayonunda Qarabağ su kanalından kişi meyiti tapılıb.

Oxu.Az-ın bölgə müxbiri xəbər verir ki, hadisə rayonun Mirzalıbəyli kəndi ərazisində baş verib. 

Hadisə yerinə rayon polis şöbəsinin əməkdaşları cəlb edilib. 

Meyitin Tərtər rayonu Çaylı qəsəbəsində müvəqqəti məskunlaşan 1967-ci il təvəllüdlü Rizvan Nəriman oğlu Mirzəliyevə məxsus olduğu müəyyənləşdirilib.

Meyit sudan çıxarılaraq ekspertizayaya göndərilib. 

Faktla bağlı araşdırma aparılır.', N'Natiq Rəhimov', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (15, N'Mingəçevirdə polis mayorunu bıçaqladılar', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDMvMDAvNDIvMTkvN2EyOGNlY2QtYmNlMi00NTNhLWFjYjMtN2EzNzc2NDI4NzE4L0LEscOnYXFsYW5tYV9racWfaS5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQ2NVx1MDAzZSJdXQ?sha=68f070200a3fa03a', CAST(N'2019-10-03T00:56:00.000' AS DateTime), 5, N'Mingəçevirdə polis əməkdaşı bıçaqlanıb.

Oxu.Az-ın Qarabağ üzrə bölgə müxbirinin verdiyi məlumata görə, Mingəçevir şəhər sakini polis mayoru Rəşad Məmmədov  Məzahir oğlu naməlum şəxs tərəfindən bıçaqlanıb.

Kəsilmiş və deşilmiş xəsarətlər alan yaralı xəstəxanaya yerləşdirilib.

Faktla bağlı araşdırma aparılır.', N'Natiq Rəhimov', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (16, N'Rusiyada rüşvət vermək istəyən azərbaycanlının məhkəməsi oldu', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDEvMTkvMDUvMTUvNGFlNDEzNDgtODU0My00ODExLTkxYTAtN2MyZjczMWI4MmIzL3J1c3ZldC5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQ2NVx1MDAzZSJdXQ?sha=b5b546cd23caa77f', CAST(N'2019-10-01T19:17:00.000' AS DateTime), 5, N'Rusiya Federasiyasının Kurqan bölgəsində Qazaxıstandan spirtli içkilərin qanunsuz idxalına görə sərhədçilərə rüşvət verməyə cəhd göstərən azərbaycanlı tutulub. 

Məhkəmə artıq bu cinayət işinə baxıb və sərhədçilərə rüşvət verdiyi üçün saxlanılan 39 yaşlı həmyerlimizə hökm oxunub. Tutulan şəxs bundan əvvəl qanunsuz alma daşınmasına görə də hüquq-mühafizə işçilərinin diqqətini cəlb edibmiş.

Bu ilin iyulunda isə o, Qazaxıstandan Rusiyaya avtomobillə mənşəyi bilinməyən alkoqollu içkilər keçirməyə cəhd göstərib. Sərhədi maneəsiz keçmək üçün o, sərhədçilərə 20 min rubl (təxminən 524 manat) məbləğində rüşvət təklif edib.

Bu barədə Kurqan və Tümen bölgələrinin Sərhəd idarəsinin mətbuat xidmətindən Nakanune.ru saytına məlumat verilib.

Adı açıqlanmayan azərbaycanlı rüşvət verdikdən sonra dərhal həbs edilib. Məhkəmədə o öz günahını etiraf edib.

Məhkəmə həmyerlimizə 200 min rubl məbləğində cərimə cəzası təyin edib.', N'Rahim Salahov', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (17, N'Qobustanda 18 yaşlı gənc bıçaqlandı', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDIvMDEvNTIvNTYvNDZhZWNmOWEtMzZkNC00MTMxLWI0MjItNGI2YjY4M2Q0NWVhL2LEsWNhcS5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQ2NVx1MDAzZSJdXQ?sha=a2c65a5ff23943b9', CAST(N'2019-10-02T03:49:00.000' AS DateTime), 5, N'Qaradağ rayonunda bıçaqlanma hadisəsi baş verib.

Oxu.Az xəbər verir ki, Qobustan qəsəbəsində 18 yaşlı Nəcəfov Sənan Nadir oğlu tanımadığı şəxslə mübahisə edən zaman bıçaqlanıb.

Yaralı ağır vəziyyətdə xəstəxanaya yerləşdirilib. Ona döş qəfəsinin kəsilmiş-deşilmiş yarası diaqnozu qoyulub.

Faktla bağlı araşdırma aparılır.', N'Kamil Əmirli', N'media.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (18, N'“Qalatasaray” İstanbulda uduzdu, Londonda doqquz qol', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDIvMDEvMzQvNTQvZmY3ZGVkZTItYWRjZS00ODA4LWIzMGItMGY2NWFlMjk4NTI3L3FhbGF0YXNhcmF5LmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI2MjB4NDY1XHUwMDNlIl1d?sha=09c957ff841c7711', CAST(N'2019-10-02T01:50:00.000' AS DateTime), 2, N'Bu gün Çempionlar Liqasının qrup mərhələsində ikinci turun oyunlarına start verilib.

“Tottenhem” – “Bavariya” oyunu ev sahiblərinin böyük hesablı məğlubiyyəti ilə yadda qalıb – 2:7.

“Qalatasaray” İstanbulda PSJ-ni qəbul edib. Matç qonaqların minimal hesablı qələbəsi ilə bitib – 0:1.

Çempionlar Liqası

II tur

A qrupu

“Real Madrid” (İspaniya) - “Brügge” (Belçika) - 2:2

“Qalatasaray” (Türkiyə) - PSJ (Fransa) - 0:1

B qrup

“Srvena Zvezda” (Serbiya) - “Olimpiakos” (Yunanıstan) - 3:1

“Tottenhem” (İngiltərə) - “Bavariya” (Almaniya) - 2:7

C qrupu

“Atalanta” (İtaliya) - "Şaxtyor" (Donetsk, Ukrayna) - 1:2

“Mançester Siti” (İngiltərə) - “Dinamo” (Zaqreb, Xorvatiya) - 2:0

D qrupu

“Yuventus” (İtaliya) - “Bayer” (Leverkuzen, Almaniya) - 3:0

“Lokomotiv” (Moskva, Rusiya) - “Atletiko” (Madrid, İspaniya) - 0:2', N'Müşviq Mehdiyev', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (19, N'Millimiz ərəb və macarlara qarşı bu futbolçularla çıxış edəcək', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDIvMTcvMDcvMjEvNzQ2MzNmYTctYTZiNy00YzY1LWJhZmYtYjZjOWY0ZGNhZDM2L21pbGxpXzE1Njc3NjA4ODcuanBnIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODAiXSxbInAiLCJ0aHVtYiIsIjYyMHg0NjVcdTAwM2UiXV0?sha=7a38e272b0e94b1e', CAST(N'2019-10-02T17:21:00.000' AS DateTime), 2, N'Azərbaycan millisinin qarşıdakı oyunlar üçün heyəti açıqlanıb. 

Oxu.Az xəbər verir ki, baş məşqçi Nikola Yurçeviç 23 futbolçuya dəvət göndərib.

Komandamız oktyabrın 6-da və 7-də Bakıda, 8-də və 9-da Bəhreyndə, ayın 10-dan 13-dək Macarıstanda təlim-məşq toplanışında olacaq. Yığmamız ayın 9-da Bəhreynlə beynəlxalq yoldaşlıq oyunu keçirəcək, 13-də isə AVRO-2020-nin seçmə qrup mərhələsi çərçivəsində Macarıstanla qarşılaşacaq.

Qapıçılar: Səlahət Ağayev (“Neftçi”), Emil Balayev (“Tobol”, Qazaxıstan), Şahruddin Məhəmmədəliyev (“Qarabağ”);

Müdafiəçilər: Şəhriyar Əliyev (“Sumqayıt”), Ömər Buludov (“Neftçi”), Abbas Hüseynov, Bədəvi Hüseynov (hər ikisi “Qarabağ”), Pavel Paşayev (“Aleksandriya”, Ukrayna), Şəhriyar  Rəhimov (“Səbail”), Təmkin Xəlilzadə, Bəhlul Mustafazadə (hər ikisi “Sabah”);

Yarımmüdafiəçilər: Qara Qarayev, Rişard Almeyda, Mahir Emreli, Araz Abdullayev (hamısı “Qarabağ”), Emin Mahmudov (“Neftçi”), Eddi İsrafilov (“Albasete”, İspaniya), Cavid Hüseynov (“Zirə”), Rəşad Eyyubov (“Sabah”);

Hücumçular: Ramil Şeydayev (“Dinamo”, Rusiya), Rüfət Dadaşov (“Proysen”, Almaniya), Renat Dadaşov (“Pasuj de Fereyra”, Portuqaliya), Ağabala Ramazanov (“Səbail”).

Qeyd edək ki, millimizin kapitanı Maksim Medvedev Xorvatiya ilə oyunda sarı vərəqə limitini doldurub cəzalı duruma düşdüyündən, bu matçlarda iştirak etməyəcək.', N'Müşviq Mehdiyev', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (20, N'Avtomobil almaq istəyənlərin NƏZƏRİNƏ', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMDkvMzAvMTcvNTQvMDQvMzBmY2UxYWYtNDQ2Ni00M2IwLWE3MDUtMDMyZGNjNWVjMDNlL2F2dG9tb2JpbF9lc2FzXzhfLmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI2MjB4NDY1XHUwMDNlIl1d?sha=0616040498b0fbe5', CAST(N'2019-09-30T18:20:00.000' AS DateTime), 3, N'29 oktyabrda hərraca çıxarılacaq nəqliyyat vasitələrinin buraxılış illəri 1989-2007-ci illər intervalındadır.

Oxu.Az xəbər verir ki, bu barədə Əmlak Məsələləri Dövlət Komitəsinin məlumatında bildirilib.

Qeyd olunub ki, “Chevrolet”, “Nissan”, “VAZ” və digər markalardan olan avtomobillərin ilkin hərrac qiymətləri 1800 manat ilə 10 min manat arasındadır.

Keçirilən hərraclarda iştirak etmək istəyən şəxslər komitənin rəsmi saytına (emdk.gov.az) və ya Özəlləşdirmə portalına (privatization.az) daxil ola bilər. Bu resurslardan seçim edərək qeydiyyatdan keçən şəxs dövlət əmlakının ilkin hərrac qiymətinin 10 faizi məbləğində behi ödəyib sifarişçi statusu ala bilər.

Hərrac günü hər kəs komitənin Elektron Xidmətlər Potalından (e-emdk.gov.az) Elektron hərrac bölməsini seçərək onlayn özəlləşdirməyə qoşula bilər.', N'Aqşin Kərimov', N'oxu.az')
GO
INSERT [dbo].[News_table] ([NewsId], [NewsTitle], [NewsImg], [NewsSharingDate], [NewsCategoryID], [NewsText], [NewsAuthor], [NewsSource]) VALUES (21, N'Rafael Cəbrayılov deputat mandatından məhrum edildi', N'https://assets.oxu.az/uploads/W1siZiIsIjIwMTkvMTAvMDIvMTYvMTUvMTIvNTVmYWM5YTQtYWY5Mi00MjZmLWFhYTItOWQ4NDlhNWMwOGM3L3JhZmFlbC5qcGciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQ2NVx1MDAzZSJdXQ?sha=bd7abb5132c9f3c4', CAST(N'2019-10-02T16:11:00.000' AS DateTime), 1, N'Mərkəzi Seçki Komissiyasının (MSK) bu gün keçirilən iclasında Rafael Cəbrayılovun deputat mandatından məhrum edilməsi məsələsinə baxılıb.

Oxu.Az-ın xəbərinə görə, iclasda qərara alınıb ki, R.Cəbrayılov deputat mandatından məhrum olunsun.

Qeyd edək ki, borca görə III və IV çağırış Milli Məclisinin vəsiqələrini girov qoyan Rafael Cəbrayılov mandatdan məhrum edilməsi üçün parlamentə müraciət edib.

Parlament isə məsələyə baxılması üçün MSK-ya müraciət etmişdi.

Xatırladaq ki, R.Cəbrayılov 300 min dollar borca görə deputat vəsiqəsini girov qoyub. ', N'Aqşin Kərimov', N'media.az')
GO
SET IDENTITY_INSERT [dbo].[News_table] OFF
GO
ALTER TABLE [dbo].[News_table] ADD  CONSTRAINT [DF_News_table_NewsSharingDate]  DEFAULT (getdate()) FOR [NewsSharingDate]
GO
