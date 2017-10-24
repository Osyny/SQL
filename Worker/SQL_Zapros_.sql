
--Select *
--From EventCalendar

--1. Добавить нового рабочего (вашего однофамильца)

	--Insert Into Workers_Blank(Name, Familia, Otchestvo, id_LevelAccess, photograph)
	--VALUES(N'Оксана', N'Дика', N'Василівна', 2 , NULL)

	--SELECT * FROM Workers_Blank;
	
--2. Добавить новый автомобиль в базу, владельцем данного автомобиля закрепить пользователя из пункта 1

	--Insert Into  Auto_Blank(Number,  Proizvoditel, Marka, Color, id_Worker)
	--Values ( N'ВВ93432СЕ_1', N'Ford_1', N'Mondeo_1', N'Серебристый', 23)

	--Select *
	--From Auto_Blank

--3. В таблицу EventCalendar записать 3 записи в которых недавно добавленный пользователь:
	--3.1. проходил на работу и выходил с нее
	--3.2. проезжал на работу и выезжал с нее
	--3.3. Пришел на работу но пока что не ушел с нее

	--DECLARE @lastAddedId int;
	--SET @lastAddedId = (SELECT MAX(id) FROM Workers_Blank);

	--Insert Into EventCalendar([dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) 
	--VALUES ( CAST(N'2016-10-02 15:20:00.000' AS DateTime), @lastAddedId, NULL, NULL, N'notebook', 7, CAST(N'2016-10-02 15:53:00.000' AS DateTime))

	--Insert Into EventCalendar([dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) 
	--VALUES ( CAST(N'2016-10-03 15:20:00.000' AS DateTime), @lastAddedId, 6, N'notebook', NULL, 7, CAST(N'2016-10-03 15:53:00.000' AS DateTime))

	--Insert Into EventCalendar([dataIn], [id_Worker], [id_Automobile], [vuneseno], [vneseno], [id_Oficer], [dataOut]) 
	--VALUES ( CAST(N'2016-10-04 15:20:00.000' AS DateTime), @lastAddedId, NULL, NULL, NULL, 7, NULL)

	--Select *
	--From EventCalendar


--4. Написать запрос, чтобы Баляр Федор "вышел" с работы текущей датой

	--UPDATE EventCalendar
	--SET dataOut = (GETDATE())

	--FROM EventCalendar, Workers_Blank
	--WHERE EventCalendar.id_Worker = Workers_Blank.id AND (Name = N'Баляр Федор')

	
--5. Выбрать все проходы по КПП, с неверно проставленой датой (дата выхода раньше чем дата захода)

	--Select id as IncorectData
	--From EventCalendar
	--Where dataOut < dataIn

--6. Выбрать всех людей, которые не вышли с работы

	--Select Name 
	--From Workers_Blank, EventCalendar
	--Where EventCalendar.id_Worker=Workers_Blank.id And EventCalendar.dataOut=NULL

--7. Выбрать рабочих, которых пропускали Охранник или Постовой
	
	--SELECT Workers_Blank.Name
	--FROM  Workers_Blank, EventCalendar, Oficers, OficerPost
	
	--WHERE EventCalendar.id_Worker=Workers_Blank.id AND  EventCalendar.id_Oficer = Oficers.id AND
	--      Oficers.id_OfocerPost = OficerPost.id AND (Post= N'Постовой' OR Post= N'Охранник')
	--GROUP BY Workers_Blank.Name


--8*. Выбрать рабочих, которые проходили на работу в понедельник (ищим функции работы с датой и временем)

	--SELECT Workers_Blank.Name, DATENAME(dw, EventCalendar.dataIn) as 'Day of week'
	--FROM  Workers_Blank, EventCalendar
	
	--WHERE EventCalendar.id_Worker=Workers_Blank.id AND DATENAME(dw, EventCalendar.dataIn) = N'понедельник'
	
	
--9. Выбрать всю информацию о проходах через КПП с выносом каких-либо вещей
	
	--SELECT Workers_Blank.Name
	--FROM  Workers_Blank, EventCalendar
	
	--WHERE EventCalendar.id_Worker=Workers_Blank.id AND EventCalendar.vuneseno IS NOT NULL
	
	

--10. Выбрать все автомобили, на которых проезжали через КПП

	--SELECT Number, EventCalendar.id_Automobile
	--FROM Auto_Blank, EventCalendar
	--WHERE Auto_Blank.id = EventCalendar.id_Automobile-- AND EventCalendar.id_Automobile IS NOT NULL

--11. Выбрать всех работников у которых в фамилии и отчестве предпоследняя буква 'и'

	--SELECT Name
	--FROM Workers_Blank
	--WHERE  Familia like '*и_' AND Otchestvo like '*и_'

--12. Выбрать все проходы на КПП работников с уровнем доступа Совершенно секретно

	--SELECT  dataIn, id_Worker, id_Automobile, vuneseno, vneseno, id_Oficer, dataOut
	--FROM EventCalendar, Workers_Blank, LevelAccess
	--WHERE EventCalendar.id_Worker = Workers_Blank.id AND Workers_Blank.id_LevelAccess = LevelAccess.id AND (Access = N'Совершенно секретно')

	----SELECT *
	----FROM EventCalendar
	----JOIN Workers_Blank
	----ON EventCalendar.id_Worker = Workers_Blank.id  --Workers_Blank.id_LevelAccess = LevelAccess.id AND (Access = N'Совершенно секретно')
	----JOIN LevelAccess
	----ON LevelAccess.id = Workers_Blank.id_LevelAccess
	----WHERE Workers_Blank.id_LevelAccess = LevelAccess.id AND (Access = N'Совершенно секретно')

--13. Выбрать все проходы через КПП, работников которые вынесли то же, что и внесли

	--SELECT *
	--FROM EventCalendar
	--WHERE vuneseno = vneseno

--14. Выбрать все проходы через КПП, работников которые имеют уровень доступа совершенно секретно и проходили через пост "полный доступ"
	
	--SELECT  dataIn, id_Worker, id_Automobile, vuneseno, vneseno, id_Oficer, dataOut
	--FROM EventCalendar, Workers_Blank, LevelAccess, Oficers, OficerPost

	--WHERE EventCalendar.id_Worker = Workers_Blank.id AND Workers_Blank.id_LevelAccess = LevelAccess.id AND 
	--      EventCalendar.id_Oficer = Oficers.id AND
	--      Oficers.id_OfocerPost = OficerPost.id AND ( Access = N'Совершенно секретно' AND Post= N'полный доступ')