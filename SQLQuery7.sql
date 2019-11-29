CREATE TABLE [dbo].[AuthorTable2](
	[AuthorID] [int] primary key NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [int] NOT NULL
	
 
)

insert into AuthorTable2(AuthorID,FirstName,LastName,BirthDate)
values(3,'george','cosbuc',1975),
	  (4,'petre','ispirescu',1925)
select*from AuthorTable2

insert into AuthorTable2(AuthorID,FirstName,LastName,BirthDate)
values(5,'mihai','eminescu',1975)

select * from AuthorTable2 where BirthDate = 1975
 
 
 CREATE TABLE [dbo].[BookTable2]
(   BookID int  primary key not null,
	[Title] [nvarchar](50) NOT NULL,
	[PublisherName] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[Price] [int] NOT NULL,
	foreign key (BookID) references AuthorTable2(AuthorID)
 
)
insert into BookTable2(BookID,Title,PublisherName,Year,Price)
values(3,'Amintiri din copilarie','Litera',1990,150)

insert into BookTable2(BookID,Title,PublisherName,Year,Price)
values(4,'Poezii','Litera',1990,120)
insert into BookTable2(BookID,Title,PublisherName,Year,Price)
values(5,'Poezii 2','Litera',1990,120)
select * from BookTable2 

delete from BookTable2 where Price < 150