--CREATE DATABASE Movies
--go

--USE Movies;

-- DROP TABLE Genre;
CREATE TABLE TheLoai(
GenreID varchar(10) NOT NULL PRIMARY KEY,
GenreType varchar(30) NOT NULL
);

-- DROP TABLE Director;
CREATE TABLE GiamDoc(
DirectorID varchar(10) NOT NULL PRIMARY KEY,
DirectorName varchar(30) NOT NULL,
DirectoryNationality varchar(30) NOT NULL
);


-- DROP TABLE Movie;
CREATE TABLE Movie (
MovieID varchar(10) NOT NULL PRIMARY KEY,
MovieTitle nvarchar (200) NOT NULL,
ReleaseDate DATE NOT NULL,
GenereID varchar(10) FOREIGN KEY References TheLoai(GenreID),
DirectorID varchar (10) FOREIGN KEY References GiamDoc(DirectorID)
);

--Equivalent to Describe Table
--exec sp_columns Movie;


INSERT INTO TheLoai VALUES 
				--('HD', 'Hành động'),
				('KH', 'Khoa học viễn tưởng'),
				('GG', 'Giật gân'),
				('HK', 'Hài kịch'),
				('HH', 'Hoạt Hình'),
				('CT','Cổ Trang');


INSERT INTO GiamDoc VALUES 
					('D01', 'Zack Snyder', 'American'),
					('D02', 'Tim Miller', 'American'),
					('D03', 'James Wan', 'Australian'),
					('D04', 'Rajkumar Hirani', 'Indian'),
					('D05', 'Ridley Scott', 'British'),
					('D06', 'Todd Phillips', 'American'),
					('D07', 'Sam Mendes', 'British'),
					('D08', 'Christopher Nolan', 'British');
					
		
INSERT INTO Movie VALUES 
    				('M01', 'Superman vs Batman', '2016-03-25', 'HH', 'D01'),
    				('M02', 'Deadpool', '2016-02-12', 'HD', 'D02'),
    				('M03', 'Furious 7', '2015-04-03', 'HD', 'D03'),
    				('M04', 'PK', '2014-12-19', 'GG', 'D04'),
    				('M05', 'Gladiator', '2000-05-05', 'HK', 'D05'),
    				('M06', 'The Hangover', '2009-06-05', 'CT', 'D06'),
    				('M07', '3 Idiots', '2009-12-25', 'GG', 'D04'),
    				('M08', 'Spectre', '2015-11-06', 'HD', 'D07'),
    				('M09', 'Batman Begins', '2005-06-15', 'HD', 'D08'),
    				('M10', 'The Dark Knight', '2008-07-18', 'HD', 'D08'),
    				('M12', 'Godzilla King of the Monsters', '2017-08-18', 'KH', 'D08'),
    				('M13', 'Beauly and thi Beast', '2011-10-02', 'CT', 'D02'),
    				('M14', 'Ready Playser one', '2012-08-11', 'GG', 'D01'),
    				('M15', 'Mad Max', '2014-01-18', 'HK', 'D03'),
    				('M16', 'Kind 2018', '2018-08-09', 'HD', 'D01'),
    				('M17', 'Train to Busan peninsula', '2018-02-12', 'GG', 'D06'),
    				('M18', 'Iron Man3', '2018-09-28', 'HK', 'D03'),
    				('M20', 'Venom', '2018-03-15', 'HD', 'D01'),
    				('M21', 'Aquaman', '2018-06-12', 'HD', 'D04'),
    				('M22', 'Jungle Cruise', '2018-03-21', 'HH', 'D01'),
    				('M23', 'Star Trek Into darkdnesss', '2018-05-03', 'HH', 'D02'),
    				('M24', 'Fantastic Beasts', '2017-09-15', 'HK', 'D01'),
    				('M25', 'Godzilla King of the Monsters', '2017-08-18', 'HD', 'D08'),
    				('M26', 'Croods', '2019-08-18', 'CT', 'D05'),
    				('M27', 'Toy sttory 3', '2020-01-08', 'HD', 'D05'),
    				('M28', 'coco', '2013-08-16', 'GG', 'D03');

SELECT * FROm LoginUser 
where UserName =? 
and PassWord = ? ;
SELECT * FROM Movie 
select * from Movie
-- Account --;
Create table account (
	UserName nvarchar(50) primary key,
	Password nvarchar(50) not null,
	permission int 
)

Insert into account values('admin', 'admin', 1);
Insert into account values('thuongchu', '123456', 2);
Insert into account values('huyen', 'nocnha', 3);


   INSERT INTO Account
  Values	('1','Admin','Admin1','0','1'),
			('2','Thuong','12062001','1','0'),
			('3','Thai','thai','1','0'),
			('4','Quang','quang','0','1'),
			('5','Cuong','Cuong','1','0'),
			('6','Tuan','Tuan','0','1'),
			('7','flo','flo','1','0'),
			('8','yue','yue','0','1'),
			('9','yena','yena','1','0'),
			('10','max','max','0','1');
