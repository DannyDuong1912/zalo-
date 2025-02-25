USE [QL_LUONG_DH]
GO
/****** Object:  Table [dbo].[BOMON]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOMON](
	[MaBoMon] [nvarchar](50) NOT NULL,
	[TenBoMon] [nvarchar](50) NOT NULL,
	[MaKhoa] [nvarchar](50) NOT NULL,
	[SoTiet] [int] NOT NULL,
 CONSTRAINT [PK_BOMON] PRIMARY KEY CLUSTERED 
(
	[MaBoMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHAMCONG]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHAMCONG](
	[MaGV] [nvarchar](50) NOT NULL,
	[Thang] [int] NOT NULL,
	[NgayCong] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MaChucVu] [nvarchar](50) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
	[PhuCap] [int] NOT NULL,
 CONSTRAINT [PK_CHUCVU] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIANGVIEN](
	[MaGV] [nvarchar](50) NOT NULL,
	[TenGV] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GT] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [int] NOT NULL,
	[CCCD] [int] NOT NULL,
	[MaChucVu] [nvarchar](50) NOT NULL,
	[MaKhoa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GIANGVIEN] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCVI]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCVI](
	[MaGV] [nvarchar](50) NOT NULL,
	[MaHocVi] [nvarchar](50) NOT NULL,
	[TenHocVi] [nvarchar](50) NOT NULL,
	[TruongDaoTao] [nvarchar](50) NOT NULL,
	[NamDatDuoc] [int] NOT NULL,
 CONSTRAINT [PK_HOCVI] PRIMARY KEY CLUSTERED 
(
	[MaHocVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHENTHUONG]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHENTHUONG](
	[MaKhenThuong] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NOT NULL,
	[TenPhanThuong] [nvarchar](50) NOT NULL,
	[NgayKhenThuong] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MaKhoa] [nvarchar](50) NOT NULL,
	[TenKhoa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KL_GIANGDAY]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KL_GIANGDAY](
	[MaGV] [nvarchar](50) NOT NULL,
	[Nam] [int] NOT NULL,
	[TongSoTiet] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUONG_]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUONG_](
	[BacLuong] [int] NOT NULL,
	[HSL] [float] NOT NULL,
	[MaChucVu] [nvarchar](50) NOT NULL,
	[LuongCoBan] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONG_GIANGDAY]    Script Date: 2/20/2024 10:41:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONG_GIANGDAY](
	[MaGV] [nvarchar](50) NOT NULL,
	[MaBoMon] [nvarchar](50) NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM001', N'Vật Lí Đại Cương', N'K002', 30)
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM002', N'Toán Cao cấp 1', N'K002', 45)
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM003', N'Toán cao cấp 2', N'K002', 45)
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM004', N'Xác xuất thống kê', N'K001', 45)
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM005', N'Triết học Mác Lê Nin', N'K001', 30)
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM006', N'Lịch Sử Đảng', N'K001', 30)
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM007', N'Đường lối cách mạng ', N'K001', 30)
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM008', N'Lập trình C++', N'K003', 45)
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM009', N'Công nghệ Phần Mềm', N'K003', 30)
INSERT [dbo].[BOMON] ([MaBoMon], [TenBoMon], [MaKhoa], [SoTiet]) VALUES (N'BM010', N'Cơ sở dữ liệu phân tán', N'K003', 30)
GO
INSERT [dbo].[CHAMCONG] ([MaGV], [Thang], [NgayCong]) VALUES (N'GV001', 2, 34)
INSERT [dbo].[CHAMCONG] ([MaGV], [Thang], [NgayCong]) VALUES (N'GV002', 4, 68)
INSERT [dbo].[CHAMCONG] ([MaGV], [Thang], [NgayCong]) VALUES (N'GV003', 3, 52)
INSERT [dbo].[CHAMCONG] ([MaGV], [Thang], [NgayCong]) VALUES (N'GV004', 1, 26)
INSERT [dbo].[CHAMCONG] ([MaGV], [Thang], [NgayCong]) VALUES (N'GV005', 1, 26)
INSERT [dbo].[CHAMCONG] ([MaGV], [Thang], [NgayCong]) VALUES (N'GV006', 5, 120)
INSERT [dbo].[CHAMCONG] ([MaGV], [Thang], [NgayCong]) VALUES (N'GV007', 7, 146)
GO
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'CV001', N'Giảng Viên', 700000)
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'CV002', N'Nghiên cứu Viên', 500000)
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'CV003', N'Giáo Sư', 2000000)
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'CV004', N'Trưởng Khoa', 2000000)
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'CV005', N'Phó Khoa', 1500000)
GO
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [NgaySinh], [GT], [DiaChi], [SDT], [CCCD], [MaChucVu], [MaKhoa]) VALUES (N'GV001', N'Nguyễn Như Thảo ', CAST(N'1992-11-02' AS Date), N'Nữ', N'Vĩnh Phúc', 244323933, 32348343, N'CV001', N'K001')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [NgaySinh], [GT], [DiaChi], [SDT], [CCCD], [MaChucVu], [MaKhoa]) VALUES (N'GV002', N'Trần Phương Anh', CAST(N'1991-12-22' AS Date), N'Nữ', N'Nam Định', 243254646, 34576745, N'CV001', N'K001')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [NgaySinh], [GT], [DiaChi], [SDT], [CCCD], [MaChucVu], [MaKhoa]) VALUES (N'GV003', N'Trương Minh An', CAST(N'1992-03-30' AS Date), N'Nữ', N'Nam Định', 234582473, 32434543, N'CV002', N'K002')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [NgaySinh], [GT], [DiaChi], [SDT], [CCCD], [MaChucVu], [MaKhoa]) VALUES (N'GV004', N'Nguyễn Ánh Tuyết', CAST(N'1997-12-02' AS Date), N'Nữ', N'Yên Bái ', 232443532, 32245433, N'CV002', N'K002')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [NgaySinh], [GT], [DiaChi], [SDT], [CCCD], [MaChucVu], [MaKhoa]) VALUES (N'GV005', N'Đường Phương Ngọc ', CAST(N'1967-12-03' AS Date), N'Nữ', N'Hà Nội', 234343453, 32434353, N'CV003', N'K003')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [NgaySinh], [GT], [DiaChi], [SDT], [CCCD], [MaChucVu], [MaKhoa]) VALUES (N'GV006', N'Nguyễn Bá Hùng', CAST(N'1966-11-03' AS Date), N'Nam       ', N'Hà Nội', 234343543, 43453453, N'CV003', N'K003')
INSERT [dbo].[GIANGVIEN] ([MaGV], [TenGV], [NgaySinh], [GT], [DiaChi], [SDT], [CCCD], [MaChucVu], [MaKhoa]) VALUES (N'GV007', N'Trương Anh Minh', CAST(N'1977-03-20' AS Date), N'Nam', N'Thái Bình', 232432455, 34545565, N'CV004', N'K004')
GO
INSERT [dbo].[HOCVI] ([MaGV], [MaHocVi], [TenHocVi], [TruongDaoTao], [NamDatDuoc]) VALUES (N'GV001', N'HV001', N'Thạc Sĩ', N'Đại học khoa học xã hội nhân văn', 2012)
INSERT [dbo].[HOCVI] ([MaGV], [MaHocVi], [TenHocVi], [TruongDaoTao], [NamDatDuoc]) VALUES (N'GV002', N'HV002', N'Thạc Sĩ', N'Đại học quốc gia Hà nội', 2014)
INSERT [dbo].[HOCVI] ([MaGV], [MaHocVi], [TenHocVi], [TruongDaoTao], [NamDatDuoc]) VALUES (N'GV003', N'HV003', N'Tiến Sĩ ', N'Đại học Bách Khoa Hà nội', 2014)
INSERT [dbo].[HOCVI] ([MaGV], [MaHocVi], [TenHocVi], [TruongDaoTao], [NamDatDuoc]) VALUES (N'GV004', N'HV004', N'Thạc Sĩ ', N'Đại học Bách Khoa Hà Nội ', 2009)
INSERT [dbo].[HOCVI] ([MaGV], [MaHocVi], [TenHocVi], [TruongDaoTao], [NamDatDuoc]) VALUES (N'GV005', N'HV005', N'Thạc Sĩ', N'Đại học thủy lợi', 2008)
INSERT [dbo].[HOCVI] ([MaGV], [MaHocVi], [TenHocVi], [TruongDaoTao], [NamDatDuoc]) VALUES (N'GV006', N'HV006', N'Cử Nhân', N'Đại học Giao Thông Vân Tải', 2012)
INSERT [dbo].[HOCVI] ([MaGV], [MaHocVi], [TenHocVi], [TruongDaoTao], [NamDatDuoc]) VALUES (N'GV007', N'HV007', N'Tiến Sĩ ', N'Học Viện chính sách', 2013)
GO
INSERT [dbo].[KHENTHUONG] ([MaKhenThuong], [MaGV], [TenPhanThuong], [NgayKhenThuong]) VALUES (N'KT001', N'GV001', N'Chiến sĩ thi đua ', CAST(N'2023-12-21' AS Date))
INSERT [dbo].[KHENTHUONG] ([MaKhenThuong], [MaGV], [TenPhanThuong], [NgayKhenThuong]) VALUES (N'KT002', N'GV002', N'Nhà giáo ưu tú', CAST(N'2023-11-11' AS Date))
INSERT [dbo].[KHENTHUONG] ([MaKhenThuong], [MaGV], [TenPhanThuong], [NgayKhenThuong]) VALUES (N'KT003', N'GV003', N'Bát mã truy phong', CAST(N'2023-03-03' AS Date))
INSERT [dbo].[KHENTHUONG] ([MaKhenThuong], [MaGV], [TenPhanThuong], [NgayKhenThuong]) VALUES (N'KT004', N'GV004', N'Nghiên cứu sáng tạo', CAST(N'2023-02-11' AS Date))
GO
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'', N'')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'K001', N'Khoa học xã hội')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'K002', N'Khoa học tự nhiên')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'K003', N'Khoa khọc công nghệ')
INSERT [dbo].[KHOA] ([MaKhoa], [TenKhoa]) VALUES (N'K004', N'Khoa học nghệ thuật nhân văn')
GO
INSERT [dbo].[KL_GIANGDAY] ([MaGV], [Nam], [TongSoTiet]) VALUES (N'GV001', 2023, 400)
INSERT [dbo].[KL_GIANGDAY] ([MaGV], [Nam], [TongSoTiet]) VALUES (N'GV002', 2023, 350)
INSERT [dbo].[KL_GIANGDAY] ([MaGV], [Nam], [TongSoTiet]) VALUES (N'GV003', 2023, 420)
INSERT [dbo].[KL_GIANGDAY] ([MaGV], [Nam], [TongSoTiet]) VALUES (N'GV004', 2022, 370)
INSERT [dbo].[KL_GIANGDAY] ([MaGV], [Nam], [TongSoTiet]) VALUES (N'GV005', 2023, 390)
INSERT [dbo].[KL_GIANGDAY] ([MaGV], [Nam], [TongSoTiet]) VALUES (N'GV006', 2022, 450)
INSERT [dbo].[KL_GIANGDAY] ([MaGV], [Nam], [TongSoTiet]) VALUES (N'GV007', 2021, 330)
GO
INSERT [dbo].[LUONG_] ([BacLuong], [HSL], [MaChucVu], [LuongCoBan]) VALUES (1, 1, N'CV001', 1000000)
INSERT [dbo].[LUONG_] ([BacLuong], [HSL], [MaChucVu], [LuongCoBan]) VALUES (2, 1.1, N'CV002', 1000000)
INSERT [dbo].[LUONG_] ([BacLuong], [HSL], [MaChucVu], [LuongCoBan]) VALUES (3, 1.5, N'CV003', 1000000)
INSERT [dbo].[LUONG_] ([BacLuong], [HSL], [MaChucVu], [LuongCoBan]) VALUES (4, 1.5, N'CV004', 1000000)
INSERT [dbo].[LUONG_] ([BacLuong], [HSL], [MaChucVu], [LuongCoBan]) VALUES (5, 1.3, N'CV005', 1000000)
GO
INSERT [dbo].[PHANCONG_GIANGDAY] ([MaGV], [MaBoMon], [NgayBatDau], [NgayKetThuc]) VALUES (N'GV001', N'BM001', CAST(N'2023-02-02' AS Date), CAST(N'2023-06-02' AS Date))
INSERT [dbo].[PHANCONG_GIANGDAY] ([MaGV], [MaBoMon], [NgayBatDau], [NgayKetThuc]) VALUES (N'GV002', N'BM002', CAST(N'2023-02-01' AS Date), CAST(N'2023-06-01' AS Date))
INSERT [dbo].[PHANCONG_GIANGDAY] ([MaGV], [MaBoMon], [NgayBatDau], [NgayKetThuc]) VALUES (N'GV003', N'BM003', CAST(N'2023-03-01' AS Date), CAST(N'2023-07-01' AS Date))
INSERT [dbo].[PHANCONG_GIANGDAY] ([MaGV], [MaBoMon], [NgayBatDau], [NgayKetThuc]) VALUES (N'GV004', N'BM004', CAST(N'2023-08-01' AS Date), CAST(N'2024-02-01' AS Date))
INSERT [dbo].[PHANCONG_GIANGDAY] ([MaGV], [MaBoMon], [NgayBatDau], [NgayKetThuc]) VALUES (N'GV005', N'BM005', CAST(N'2023-09-01' AS Date), CAST(N'2024-03-01' AS Date))
GO
ALTER TABLE [dbo].[BOMON]  WITH CHECK ADD  CONSTRAINT [FK_BOMON_KHOA] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[BOMON] CHECK CONSTRAINT [FK_BOMON_KHOA]
GO
ALTER TABLE [dbo].[CHAMCONG]  WITH CHECK ADD  CONSTRAINT [FK_CHAMCONG_GIANGVIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIANGVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[CHAMCONG] CHECK CONSTRAINT [FK_CHAMCONG_GIANGVIEN]
GO
ALTER TABLE [dbo].[GIANGVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIANGVIEN_CHUCVU] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[CHUCVU] ([MaChucVu])
GO
ALTER TABLE [dbo].[GIANGVIEN] CHECK CONSTRAINT [FK_GIANGVIEN_CHUCVU]
GO
ALTER TABLE [dbo].[GIANGVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIANGVIEN_KHOA] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[KHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[GIANGVIEN] CHECK CONSTRAINT [FK_GIANGVIEN_KHOA]
GO
ALTER TABLE [dbo].[HOCVI]  WITH CHECK ADD  CONSTRAINT [FK_HOCVI_GIANGVIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIANGVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[HOCVI] CHECK CONSTRAINT [FK_HOCVI_GIANGVIEN]
GO
ALTER TABLE [dbo].[KHENTHUONG]  WITH CHECK ADD  CONSTRAINT [FK_KHENTHUONG_GIANGVIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIANGVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[KHENTHUONG] CHECK CONSTRAINT [FK_KHENTHUONG_GIANGVIEN]
GO
ALTER TABLE [dbo].[KL_GIANGDAY]  WITH CHECK ADD  CONSTRAINT [FK_KL_GIANGDAY_GIANGVIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIANGVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[KL_GIANGDAY] CHECK CONSTRAINT [FK_KL_GIANGDAY_GIANGVIEN]
GO
ALTER TABLE [dbo].[LUONG_]  WITH CHECK ADD  CONSTRAINT [FK_LUONG__CHUCVU] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[CHUCVU] ([MaChucVu])
GO
ALTER TABLE [dbo].[LUONG_] CHECK CONSTRAINT [FK_LUONG__CHUCVU]
GO
ALTER TABLE [dbo].[PHANCONG_GIANGDAY]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_GIANGDAY_GIANGVIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIANGVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[PHANCONG_GIANGDAY] CHECK CONSTRAINT [FK_PHANCONG_GIANGDAY_GIANGVIEN]
GO
