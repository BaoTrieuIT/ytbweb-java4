CREATE DATABASE OEDatabase
USE OEDatabase
GO

CREATE TABLE USERS(
	ID				VARCHAR(10)		PRIMARY KEY,
	[PASSWORD]		VARCHAR(10)		NOT NULL,
	EMAIL			VARCHAR(50)		UNIQUE NOT NULL,
	FULLNAME		NVARCHAR(255)	NOT NULL, 
	[ADMIN]			BIT				NOT NULL DEFAULT 0, 
);

select * from USERS
INSERT INTO USERS
VALUES
('BAOTP', '123', 'BAOTPPS22325@FPT.EDU.VN', N'TRIỆU PHAN THIÊN BẢO', 0),
('PHONGTQ', '123', 'PHONGTQPS22325@FPT.EDU.VN', N'TẠ QUỐC PHONG', 0),
('TUANLXA', '123', 'TUANLXAPS22325@FPT.EDU.VN', N'LÊ XUÂN ANH TUẤN', 0),
('VIETNHQ', '123', 'VIETNHQPS22325@FPT.EDU.VN', N'NGÔ HOÀNG QUỐC VIỆT', 0),
('CANHDHQ', '123', 'CANHDHPS22325@FPT.EDU.VN', N'ĐẶNG HOÀNG CẢNH', 0),
('NHUONGTV', '123', 'NHUONGTVPS22325@FPT.EDU.VN', N'TRIỆU VĂN NHƯỜNG', 0),
('LOCPT', '123', 'LOCPTPS22325@FPT.EDU.VN', N'PHAN THỊ LỘC', 0),
('DUNGTA', '123', 'DUNGTAPS22325@FPT.EDU.VN', N'TRIỆU ANH DŨNG', 0),
('SONNT', '123', 'SONNTPS22325@FPT.EDU.VN', N'NGUYỄN THANH SƠN', 0),
('NGOCHM', '123', 'NGOCHMPS22325@FPT.EDU.VN', N'HOÀNG MAI NGỌC', 0)
go
INSERT INTO USERS
VALUES 
('admin', 'admin', 'admin@fpt.edu.vn', N'Admin', 1)

go

CREATE TABLE VIDEOS(
	ID							VARCHAR(50)			PRIMARY KEY,
	TITTLE					NVARCHAR(MAX)	NOT NULL, 
	POSTER				VARCHAR(MAX)		NOT NULL,
	[VIEWS]				INT							NOT NULL, 
	[DESCRIPTION]	NVARCHAR(MAX)	NOT NULL,
	ACTIVE					BIT							NOT NULL DEFAULT 1,
);

INSERT INTO  VIDEOS
VALUES
('SwQ7Ooq3Qa4',N'Sometimes i enjoy being alone','https://i.ytimg.com/vi/SwQ7Ooq3Qa4/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCzIKwoF5lsHRcYArfc3-lSFPJmXQ',200000,N'Sometimes i enjoy being alone',1),
('PbasE68lqA4',N'Ngơ ( MCK ) | Nhạc Indie - Tuyển tập Nhạc tình của Ngơ','https://i.ytimg.com/vi/PbasE68lqA4/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhJIBMofzAP&rs=AOn4CLD-6GK0_djCykihBwdNTQELUmm8dg',200000,N'Anh em  nhớ đăng kí kênh ủng hộ những chất nghiện tiếp theo :))',1),
('WcR1hwULTdc',N'Lab5_Thêm,Xóa, Sửa Trong Hipernate (Lớp ca6)','https://i.ytimg.com/vi/WcR1hwULTdc/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDWp8zLcVGby7DavHUx5alK62RrjQ',200000,N'thêm xóa sửa trong hipernate servlet',1),
('pr4GYsi0s50',N'Kiến nghị điều tra vụ máy bay trực thăng rơi trên Vịnh Hạ Long | VTV24','https://i.ytimg.com/vi/pr4GYsi0s50/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBGtFdb1fae3ZXtMdbUepcFpTmhBA',200000,N'Cục Hàng không Việt Nam đề xuất kiến nghị trình Chính phủ tiến hành công tác điều tra vụ trực thăng Bell 505 gặp nạn tại Vịnh Hạ Long, tỉnh Quảng Ninh.',1),
('tYeR3KX0JDo',N'Vợ phi công Chu Quang Minh: Cuối năm nay ông ấy về hưu rồi… | CafeLand','https://i.ytimg.com/vi/tYeR3KX0JDo/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDpu5OP32U4Kf6I85Ky0NU1CZo-JQ',200000,N'
Like, Share & Subscribe để cập nhật thông tin BĐS và review dự án mỗi ngày nhé.',1)


INSERT INTO  VIDEOS
VALUES
('K_anYI8gWeU',N'Restream hôm qua...........','https://i.ytimg.com/vi/K_anYI8gWeU/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCK280rbT7OQK4HCRVZWfiPOCTK4w',200000,N'Lịch Livestream cố định đến năm 2059.',1),
('m0eX9TJnypU',N'Nhạc Hay Ít Người Biết [13/01] / pt 2 - a playlist by Chillmotti
','https://i.ytimg.com/vi/m0eX9TJnypU/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB_gmAAtAFigIMCAAQARhlIEsoZTAP&rs=AOn4CLAxiYHknGwR6fhfGqXdSSmeDtH6oQ',200000,N'Chào mừng bạn đến với kênh sưu tầm nhạc của mình hihi ^^',1),
('7SvJi-wOuY',N'MÁNH & MẸO HÀNG CHỜ PANDORA | EM CHÈ
','https://i.ytimg.com/vi/-7SvJi-wOuY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBb6kDOhD2Nn1MLel-c2kBnNRfIcw',200000,N'MÁNH & MẸO HÀNG CHỜ PANDORA',1),
('0wHLLodJ0YM',N'Tự Tình - Quang Huy ft. Minh Triều 「Official MV」
','https://i.ytimg.com/vi/0wHLLodJ0YM/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAFDH_IpbEaMZ7lAtdVA4mkwTrZsQ',200000,N'Tự Tình - Quang Huy ft. Minh Triều  「Official MV」',1),
('sU8jVz5iCug',N'[SERIES: Một Chút] 2016 thứ hai.
','https://i.ytimg.com/vi/sU8jVz5iCug/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCvrG_l3l0bgVpdlp5uKZZ3jgYRFg',200000,N'Âm nhạc là bức họa muôn hình muôn vẻ, nó mang đầy sắc thái và chất chứa tâm hồn của người nghệ sĩ.',1)

INSERT INTO  VIDEOS
VALUES
('vhn6vKrLz5E',N'Tatu - Thái Hoàng Remix (Exclusive Music) Nhạc Hot Tik Tok 2023','https://i.ytimg.com/vi/vhn6vKrLz5E/hq720.jpg?sqp=-oaymwE2CNAFEJQDSFXyq4qpAygIARUAAIhCGAFwAcABBvABAfgB9AmAAtAFigIMCAAQARg6IEgocjAP&rs=AOn4CLAiZx3bGnGadUxasPPFuGi11i7syw',200000,N'Music : Tatu - Thái Hoàng Remix',1),
('TvJFRM9VO2M',N'RỚT KIM CƯƠNG! TÔI XÓA GAME! - CƯỜNG 7 NÚI QUYẾT TÂM CHƠI LỚN ĐỂ KHÔNG PHẢI CHIA TAY LMHT!','https://i.ytimg.com/vi/TvJFRM9VO2M/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBoDMyszgQiyIoXn22IGt9zXA3vtg',200000,N'Đã đến lúc dùng tool rồi anh em!',1),
('8ztom0S8jSY',N'You fell in love ~ a lovecore playlist','https://i.ytimg.com/vi/8ztom0S8jSY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDMPH8rxTGxZsl3FuDsmCwIKXT5BA',200000,N'You fell in love ~ a lovecore playlist',1),
('AwwxwHDL790',N'Playlist Chill - Ở đâu có nỗi buồn ở đó có','https://i.ytimg.com/vi/AwwxwHDL790/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB8Nx4oCPMmSXTR3PySKijGPN5GFQ',200000,N'Tất cả âm thanh, hình ảnh này đều không không thuộc sở hữu của mình ',1),
('2twQBWh1c5k',N'CHỌC MÙ MẮT TÔI ĐI... CHƠI NHẦM GAME KINH DỊ GÌ THẾ NÀY =))) - SHIRIME #1','https://i.ytimg.com/vi/2twQBWh1c5k/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAHtDMsjBaX6rwYogPYC13Mt0suag',200000,N'Đây là game SHIRIME: The Curse of Butt-Eye chơi trên kênh Trực Tiếp Game của tôi - Dũng CT. ',1)

GO

CREATE TABLE FAVORITES(
	ID						BIGINT						PRIMARY KEY IDENTITY(1,1),
	USERID			VARCHAR(10)		 	FOREIGN KEY REFERENCES USERS (ID),
	VIDEOID			VARCHAR(50)			FOREIGN KEY REFERENCES VIDEOS (ID),
	LIKEDATE			DATETIME				NULL,
 );


 CREATE TABLE SHARES (
	ID						BIGINT						PRIMARY KEY IDENTITY(1,1),
	USERID			VARCHAR(10)			FOREIGN KEY REFERENCES USERS (ID),
	VIDEOID			VARCHAR(50)			FOREIGN KEY REFERENCES VIDEOS (ID),
	EMAILS			VARCHAR,
	SHAREDATE		DATETIME,
	
 );



Create proc sp_FavoriteByYear (@year int)
AS
Begin
	Select v.TITTLE as 'group',
	count(f.VIDEOID) as 'likes',
	max(f.LIKEDATE) as 'newest',
	min(f.LIKEDATE) as 'oldest'
	from FAVORITES f join VIDEOS v on f.VIDEOID = v.ID
	where @year = YEAR(f.ID)
	group by v.TITTLE
end

SELECT * FROM VIDEOS