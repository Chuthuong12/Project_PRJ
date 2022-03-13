--CREATE DATABASE Movies
--go

--USE Movies;

-- DROP TABLE Genre;
CREATE TABLE TheLoai(
GenreName nvarchar(200) NOT NULL PRIMARY KEY,
GenreType varchar(100) NOT NULL
);

-- DROP TABLE Director;
CREATE TABLE GiamDoc(
DirectorID varchar(100) NOT NULL PRIMARY KEY,
DirectorName varchar(90) NOT NULL,
DirectoryNationality varchar(90) NOT NULL
);


-- DROP TABLE Movie;
CREATE TABLE Movie (
MovieID varchar(10) NOT NULL PRIMARY KEY,
[MovieTitle] [nvarchar](200) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[price] [int] NULL,

	[img] [varchar](max) NULL,
	[Time] [int] NULL,

GenreName nvarchar(200) FOREIGN KEY References TheLoai(GenreName),
DirectorID varchar (100) FOREIGN KEY References GiamDoc(DirectorID)
);

--Equivalent to Describe Table

CREATE TABLE [imgtable](
  	  [id] INT IDENTITY(1,1) PRIMARY KEY,
	  [img] [IMAGE] NULL );
--exec sp_columns Movie;

delete from TheLoai
INSERT INTO TheLoai VALUES 
				--('HD', 'Hành động'),
				(N'Khoa Học Viễn Tưởng', N'Khoa học viễn tưởng'),
				(N'Giật Gân', N'Giật gân'),
				(N'Hài Kịch', 'Hài kịch'),
				(N'Hoạt Hình', N'Hoạt Hình'),
				(N'Cổ Trang', N'Cổ Trang'),
				(N'Hành Động',N'Hành Động');


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
    				('M01', 'Batman', '2016-03-25','9','https://media.maybe.vn/attachments/image-276-1645849093-jpeg.28431/' ,'140',N'Hành Động', 'D01' ),
    				('M02', 'Deadpool', '2016-02-12','10', 'https://m.media-amazon.com/images/M/MV5BMTYzMzUwMjAyNV5BMl5BanBnXkFtZTgwMDk2Nzc5NzE@._V1_.jpg','120', N'Hành Động', 'D02'),
    				('M03', 'Furious 9', '2015-04-03','9', 'https://ecdn.game4v.com/g4v-content/uploads/2021/04/Fast-9.jpg','111',	N'Hành Động', 'D03'),
    				('M04', 'Into darknes', '2014-12-19','8','https://cdn.vox-cdn.com/thumbor/gFi9yvIKcTgQKuIuy8tupjZGYqI=/0x0:640x427/1400x1400/filters:focal(0x0:640x427):format(jpeg)/cdn.vox-cdn.com/assets/1839025/startrek.jpg','135',	N'Giật gân', 'D04'),
    				('M05', 'Gladiator', '2000-05-05','9','https://upload.wikimedia.org/wikipedia/vi/f/f8/GladiatorDVD.png','140',	N'Cổ Trang', 'D05'),
    				('M06', 'Tom and Jejy', '2009-06-05','11','https://gamek.mediacdn.vn/133514250583805952/2021/1/15/1-16106966278281009206635.jpg','199',	 N'Hoạt Hình', 'D06'),
    	
    				('M08', 'Star Wars', '2015-11-06','16','https://www.google.com/url?sa=i&url=https%3A%2F%2Finsidethemagic.net%2F2022%2F01%2Fstar-wars-the-freemaker-adventures-removed-disney-plus-th1%2Fcomments%2F&psig=AOvVaw2hy06Kd5w01DHs4G4qPV2s&ust=1647220016161000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCPjVl4bzwfYCFQAAAAAdAAAAABAK','89', N'Hành Động', 'D08'),
    				('M09', 'Venom', '2005-06-15', '90','https://static.ssphim.net/static/5fe2d564b3fa6403ffa11d1c/61892e1fa9371f3a919b76c6_Venom-2-1.jpg','101',N'Hành Động', 'D01'),
    				('M10', 'iron Man3', '2008-07-18', '12','https://static.ssphim.net/static/5fe2d564b3fa6403ffa11d1c/5fe2d564b3fa648b2ca1229e_iron-man-3-1.jpg' ,'109', N'Hành Động', 'D02'),
    				('M12', 'The Flash', '2017-08-18', '10','https://m.media-amazon.com/images/M/MV5BMDIzNzYwNTctZWY4Mi00YjQ2LWI5YWYtMzdmNDgwMGI4Yzk1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg','123', N'Khoa Học Viễn Tưởng', 'D03');
    				select * from Movie
    				


SELECT * FROm Movie 
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

 select * from Movie