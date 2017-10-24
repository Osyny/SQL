
--Задание:
--Показать издательства и сумму страниц по каждому из них.

	--SELECT Press.Name, (SUM(Pages))
	--FROM Press, Books
	--WHERE Press.id = Books.Id_Press
	
	--Group By Press.Name
	
	
--Показать общее кол-во книг, взятых студентами факультета 'Программирования'.

	--SELECT COUNT(S_Cards.id_Book) as 'countBook'
	--FROM  Students, S_Cards, Faculties, Groups
	
	--WHERE Students.id = S_Cards.Id_Student AND
	--	  Faculties.id= Groups.Id_Faculty AND 
	--	  Faculties.Name = 'Программирования'
		  
	
	
--Вывести кол-во книг и сумму страниц этих книг по каждому из издательств 'Питер','Наука' и 'Кудиц-Образ'.
	
	--SELECT Press.Name, (SUM(Pages) ) AS CountBooks, Count(Books.Id_Press) as 'SumPage'
	--FROM Press, Books
	--WHERE Press.id = Books.Id_Press AND
	--     ( Press.Name = 'Питер' OR Press.Name = 'Наука' OR  Press.Name = 'Кудиц-Образ')
	
	--Group By Press.Name
	
--Вывести информацию о книге по программированию с наибольшим количеством страниц.

	--SELECT Books.Name, Comment, MAX(Pages) AS 'countPage'
	--FROM Books, Themes
	
	--WHERE Themes.id = Books.Id_Themes AND
	--      Themes.Name = N'Программирование'
	       
	--GROUP BY Books.Name, Comment       
	
	
--Вывести на экран кол-во взятых книг по каждой из кафедр.

	
	--SELECT Departments.Name
	--From Departments, Teacher, T_Cards
	--WHERE Teacher.id = T_Cards.Id_Teacher AND
	--	    Departments.id = Teacher.Id_Dep
	--	  
	--GROUP By Departments.Name  
	 
--Показать издательства и самую старую книгу для каждого из них.

	SELECT YearPress, Books.Name, Press.Name as pressName
	FROM Press
	JOIN Books
	ON Press.id = Books.Id_Press
	--GROUP by YearPress, Books.Name, Press.Name

	JOIN (SELECT Press.Name, MAX(YearPress) as maxYears
		  FROM Press
		  JOIN Books
		  ON Press.id = Books.Id_Press
		  GROUP BY Press.Name  ) t
        ON t.Name = Press.Name AND  t.maxYears = Books.YearPress


	----SELECT Top(1) YearPress, Books.Name
	----FROM  Press, Books
	----WHERE Press.id = Books.Id_Press
	
	----ORDER By 1 DESC
	     	
	
--Показать книги, которые брали и преподаватели и студенты (исключить повторения).

	--SELECT Books.Name
	--FROM Books
	--JOIN S_Cards
	--ON Books.id = S_Cards.Id_Book
	--UNION
	--SELECT Books.Name
	--FROM Books
	--JOIN T_Cards
	--ON Books.id = T_Cards.Id_Book	 	  
	
	
--Показать название книги с максимальным кол-вом страниц по каждому из издательств.(с начала найти максимум по издательствам, после чего вложить этот запрос внутрь поиска по книгам)

	--SELECT Press.Name as PressName, Books.Name as Book_Name, Pages as Count_Pagess
	--FROM Press
	--JOIN Books
	--ON Press.id = Books.Id_Press
	
	--JOIN ( SELECT Press.Name, MAX(Pages) as 'maxPress'
	--	   FROM	 Press, Books
	--	   WHERE Press.id = Books.Id_Press
	--	   GROUP BY Press.Name) t
	--ON t.Name = Press.Name AND  t.maxPress = Books.Pages

	----SELECT Press.Name ,Books.Name as Book_Name,  MAX(Pages) as 'maxPress'
	----	   FROM	 Press, Books
	----	   WHERE Press.id = Books.Id_Press
	----	   GROUP BY Press.Name, Books.Name


--Показать автора самой популярной книги у студентов.

	--SELECT   Authors.LastName, COUNT(Id_Student) AS countBooks   --, Students.FirstName AS 'StudFirstName' , 
	--FROM Books
	--JOIN S_Cards
	--ON Books.id = S_Cards.Id_Book
	--JOIN Students
	--ON Students.id = S_Cards.Id_Student
	--JOIN Authors
	--ON Authors.id = Books.Id_Author
	
	--GROUP BY Authors.LastName --, Students.FirstName 
	--ORDER BY COUNT(Id_Student) DESC

--Показать кафедру (department), которая брала наибольшее кол-во книг.

	--SELECT Departments.Name 
	--From Departments
	---- Teachers, T_Cards
	--JOIN Teachers
	--ON Teachers.id = ( SELECT TOP(1) Teachers.Id_Dep
	--						FROM T_Cards
	--						Join Teachers 
	--						ON T_Cards.Id_Teacher = Teachers.id

	--						Group by Teachers.id_Dep
	--						Order By  COUNT(*) DESC)
	
	
--Показать тематику, самую популярную среди преподавателей