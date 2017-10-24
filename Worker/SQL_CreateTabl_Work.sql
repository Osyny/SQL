USE [21_09_H_W_day4]
GO

--drop table Auto_Blank
--drop table EventCalendar
--drop table LevelAccess
--drop table OficerPost
--drop table EventCalendar
--drop table [dbo].[Workers_Blank]


/****** Object:  Table [dbo].[Auto_Blank]    Script Date: 25.08.2016 1:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auto_Blank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [varchar](12) NOT NULL,
	[Proizvoditel] [varchar](15) NOT NULL,
	[Marka] [varchar](15) NOT NULL,
	[Color] [varchar](15) NOT NULL,
	[id_Worker] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventCalendar]    Script Date: 25.08.2016 1:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventCalendar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataIn] [datetime] NOT NULL,
	[id_Worker] [int] NULL,
	[id_Automobile] [int] NULL,
	[vuneseno] [varchar](80) NULL,
	[vneseno] [varchar](80) NULL,
	[id_Oficer] [int] NOT NULL,
	[dataOut] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LevelAccess]    Script Date: 25.08.2016 1:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LevelAccess](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Access] [varchar](30) NULL DEFAULT ('Проход'),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OficerPost]    Script Date: 25.08.2016 1:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OficerPost](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Post] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Oficers]    Script Date: 25.08.2016 1:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Oficers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](12) NOT NULL,
	[Familia] [varchar](30) NOT NULL,
	[Otchestvo] [varchar](20) NOT NULL,
	[id_OfocerPost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Workers_Blank]    Script Date: 25.08.2016 1:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Workers_Blank](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](12) NOT NULL,
	[Familia] [varchar](30) NOT NULL,
	[Otchestvo] [varchar](20) NOT NULL,
	[id_LevelAccess] [int] NULL,
	[photograph] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Auto_Blank] ON 

GO
INSERT [dbo].[Auto_Blank] ([id], [Number], [Proizvoditel], [Marka], [Color], [id_Worker]) VALUES (1, N'АА23560ВВ', N'Mitsubishi', N'Lancer', N'Черный', 8)
GO
INSERT [dbo].[Auto_Blank] ([id], [Number], [Proizvoditel], [Marka], [Color], [id_Worker]) VALUES (2, N'35560КЕ', N'Mercedes', N'Actros', N'Красный', 4)
GO
INSERT [dbo].[Auto_Blank] ([id], [Number], [Proizvoditel], [Marka], [Color], [id_Worker]) VALUES (3, N'АС22003ММ', N'Mercedes', N'Atego', N'Синий', 3)
GO
INSERT [dbo].[Auto_Blank] ([id], [Number], [Proizvoditel], [Marka], [Color], [id_Worker]) VALUES (4, N'КЛ34592ВА', N'Ford', N'Mondeo', N'Серебристый', 12)
GO
INSERT [dbo].[Auto_Blank] ([id], [Number], [Proizvoditel], [Marka], [Color], [id_Worker]) VALUES (5, N'ВВ93432СЕ', N'ЗАЗ', N'Запорожец', N'Серый', 16)
GO
SET IDENTITY_INSERT [dbo].[Auto_Blank] OFF
GO
SET IDENTITY_INSERT [dbo].[EventCalendar] ON 

GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (1, CAST(N'2016-10-02 15:12:00.000' AS DateTime), 3, 3, N'printer', NULL, 7, CAST(N'2016-10-02 15:53:00.000' AS DateTime))
GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (2, CAST(N'2016-10-21 06:43:00.000' AS DateTime), 2, NULL, NULL, NULL, 7, NULL)
GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (3, CAST(N'2016-10-22 07:23:00.000' AS DateTime), 1, NULL, NULL, NULL, 7, CAST(N'2016-10-22 18:16:00.000' AS DateTime))
GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (4, CAST(N'2016-10-23 03:12:00.000' AS DateTime), 3, NULL, NULL, NULL, 7, NULL)
GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (5, CAST(N'2016-11-22 08:07:00.000' AS DateTime), 9, NULL, NULL, NULL, 1, CAST(N'2016-11-22 12:12:00.000' AS DateTime))
GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (6, CAST(N'2016-09-20 08:09:00.000' AS DateTime), 16, 5, NULL, NULL, 10, NULL)
GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (7, CAST(N'2016-10-10 15:54:00.000' AS DateTime), 8, NULL, NULL, NULL, 2, CAST(N'2016-10-11 05:23:00.000' AS DateTime))
GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (8, CAST(N'2016-10-05 21:23:00.000' AS DateTime), 12, 4, NULL, N'printer', 10, CAST(N'2016-10-06 08:23:00.000' AS DateTime))
GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (9, CAST(N'2016-10-12 17:18:00.000' AS DateTime), 16, 5, N'computer', N'computer', 10, CAST(N'2016-10-10 15:00:00.000' AS DateTime))
GO
INSERT [dbo].[EventCalendar] ([id], [dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) VALUES (10, CAST(N'2016-10-16 19:04:00.000' AS DateTime), 3, 3, N'krab', N'krab', 7, NULL)
GO
SET IDENTITY_INSERT [dbo].[EventCalendar] OFF
GO
SET IDENTITY_INSERT [dbo].[LevelAccess] ON 

GO
INSERT [dbo].[LevelAccess] ([id], [Access]) VALUES (1, N'пропуск')
GO
INSERT [dbo].[LevelAccess] ([id], [Access]) VALUES (2, N'низкий уровень секретности')
GO
INSERT [dbo].[LevelAccess] ([id], [Access]) VALUES (3, N'секретно')
GO
INSERT [dbo].[LevelAccess] ([id], [Access]) VALUES (4, N'совершенно секретно')
GO
SET IDENTITY_INSERT [dbo].[LevelAccess] OFF
GO
SET IDENTITY_INSERT [dbo].[OficerPost] ON 

GO
INSERT [dbo].[OficerPost] ([id], [Post]) VALUES (1, N'Охранник')
GO
INSERT [dbo].[OficerPost] ([id], [Post]) VALUES (2, N'Постовой')
GO
INSERT [dbo].[OficerPost] ([id], [Post]) VALUES (3, N'Начальник охраны')
GO
INSERT [dbo].[OficerPost] ([id], [Post]) VALUES (4, N'Полный доступ')
GO
SET IDENTITY_INSERT [dbo].[OficerPost] OFF
GO
SET IDENTITY_INSERT [dbo].[Oficers] ON 

GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (1, N'Измаил', N'Петров', N'Эвгениевич', 1)
GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (2, N'Владимир', N'Кузнецов', N'Владимирович', 1)
GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (3, N'Николай', N'Иванов', N'Давыдович', 1)
GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (4, N'Сигизмунд', N'Погребняк', N'Александрович', 2)
GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (5, N'Сергей', N'Кравец', N'Якович', 2)
GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (6, N'Владлен', N'Сиротин', N'Ефремович', 2)
GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (7, N'Дмитрий', N'Сердюк', N'Владимирович', 2)
GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (8, N'Павел', N'Белый', N'Григорович', 2)
GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (9, N'Евгений', N'Иваний', N'Степанович', 2)
GO
INSERT [dbo].[Oficers] ([id], [Name], [Familia], [Otchestvo], [id_OfocerPost]) VALUES (10, N'Святослав', N'Дубов', N'Петрович', 3)
GO
SET IDENTITY_INSERT [dbo].[Oficers] OFF
GO
SET IDENTITY_INSERT [dbo].[Workers_Blank] ON 

GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (1, N'Святополк', N'Дубов', N'Иванович', 1, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (2, N'Федор', N'Баляр', N'Макарович', 1, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (3, N'Захар', N'Безуглый', N'Степанович', 1, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (4, N'Вадим', N'Кучма', N'Иссарионович', 1, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (5, N'Виктор', N'Голий', N'Дмитриевич', 1, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (6, N'Вольдемар', N'Дворецкий', N'Максимович', 2, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (7, N'Адам', N'Дмитриев', N'Олександрович', 2, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (8, N'Альфред', N'Дорохов', N'Иванович', 2, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (9, N'Антоний', N'Жук', N'Дмитриевич', 3, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (10, N'Артем', N'Кисилевич', N'Никитиевич', 3, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (11, N'Арсений', N'Клименко', N'Блабланович', 3, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (12, N'Олег', N'Комисаров', N'Георгиевич', 4, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (13, N'Дмитрий', N'Литвин', N'Твердынич', 1, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (14, N'Осип', N'Назарчук', N'Почтальйоныч', 2, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (15, N'Рудольф', N'Подушко', N'Владимирович', 3, NULL)
GO
INSERT [dbo].[Workers_Blank] ([id], [Name], [Familia], [Otchestvo], [id_LevelAccess], [photograph]) VALUES (16, N'Иосиф', N'Соколовский', N'Вольдемарович', 4, NULL)
GO
SET IDENTITY_INSERT [dbo].[Workers_Blank] OFF
GO
ALTER TABLE [dbo].[Auto_Blank]  WITH CHECK ADD FOREIGN KEY([id_Worker])
REFERENCES [dbo].[Workers_Blank] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[EventCalendar]  WITH CHECK ADD  CONSTRAINT [FK__EventCale__id_Au__21B6055D] FOREIGN KEY([id_Automobile])
REFERENCES [dbo].[Auto_Blank] ([id])
GO
ALTER TABLE [dbo].[EventCalendar] CHECK CONSTRAINT [FK__EventCale__id_Au__21B6055D]
GO
ALTER TABLE [dbo].[EventCalendar]  WITH CHECK ADD  CONSTRAINT [FK__EventCale__id_Of__24927208] FOREIGN KEY([id_Oficer])
REFERENCES [dbo].[Oficers] ([id])
GO
ALTER TABLE [dbo].[EventCalendar] CHECK CONSTRAINT [FK__EventCale__id_Of__24927208]
GO
ALTER TABLE [dbo].[EventCalendar]  WITH CHECK ADD  CONSTRAINT [FK__EventCale__id_Wo__20C1E124] FOREIGN KEY([id_Worker])
REFERENCES [dbo].[Workers_Blank] ([id])
GO
ALTER TABLE [dbo].[EventCalendar] CHECK CONSTRAINT [FK__EventCale__id_Wo__20C1E124]
GO
ALTER TABLE [dbo].[Oficers]  WITH CHECK ADD FOREIGN KEY([id_OfocerPost])
REFERENCES [dbo].[OficerPost] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Workers_Blank]  WITH CHECK ADD FOREIGN KEY([id_LevelAccess])
REFERENCES [dbo].[LevelAccess] ([id])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO





--1. Добавить нового рабочего (вашего однофамильца)
--2. Добавить новый автомобиль в базу, владельцем данного автомобиля закрепить пользователя из пункта 1
--3. В таблицу EventCalendar записать 3 записи в которых недавно добавленный пользователь:
--3.1. проходил на работу и выходил с нее
--3.2. проезжал на работу и выезжал с нее
--3.3. Пришел на работу но пока что не ушел с нее
--4. Написать запрос, чтобы Баляр Федор "вышел" с работы текущей датой
--5. Выбрать все проходы по КПП, с неверно проставленой датой (дата выхода раньше чем дата захода)
--6. Выбрать всех людей, которые не вышли с работы
--7. Выбрать рабочих, которых пропускали Охранник или Постовой
--8*. Выбрать рабочих, которые проходили на работу в понедельник (ищим функции работы с датой и временем)
--9. Выбрать всю информацию о проходах через КПП с выносом каких-либо вещей
--10. Выбрать все автомобили, на которых проезжали через КПП
--11. Выбрать всех работников у которых в фамилии и отчестве предпоследняя буква 'и'
--12. Выбрать все проходы на КПП работников с уровнем доступа Совершенно секретно
--13. Выбрать все проходы через КПП, работников которые вынесли то же, что и внесли
--14. Выбрать все проходы через КПП, работников которые имеют уровень доступа совершенно секретно и проходили через пост "полный доступ"