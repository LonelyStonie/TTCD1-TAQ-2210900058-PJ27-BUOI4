USE [quan_ly_tiem_net]
GO
/****** Object:  Table [dbo].[ChiTietPhienChoi]    Script Date: 03/11/2024 12:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhienChoi](
	[ma_chi_tiet] [int] IDENTITY(1,1) NOT NULL,
	[ma_phien] [int] NULL,
	[ma_may_tinh] [int] NULL,
	[thoi_gian_vao] [datetime] NOT NULL,
	[thoi_gian_ra] [datetime] NULL,
	[thoi_luong] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_chi_tiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoDich]    Script Date: 03/11/2024 12:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDich](
	[ma_giao_dich] [int] IDENTITY(1,1) NOT NULL,
	[ma_nguoi_dung] [int] NULL,
	[loai_giao_dich] [varchar](20) NULL,
	[so_tien] [decimal](10, 2) NOT NULL,
	[ngay_giao_dich] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_giao_dich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MayTinh]    Script Date: 03/11/2024 12:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayTinh](
	[ma_may_tinh] [int] IDENTITY(1,1) NOT NULL,
	[ten_may_tinh] [varchar](50) NOT NULL,
	[trang_thai] [varchar](20) NULL,
	[vi_tri] [varchar](100) NULL,
	[ngay_tao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_may_tinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 03/11/2024 12:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ma_nguoi_dung] [int] IDENTITY(1,1) NOT NULL,
	[ten_dang_nhap] [varchar](50) NOT NULL,
	[mat_khau] [varchar](255) NOT NULL,
	[vai_tro] [varchar](20) NOT NULL,
	[ho_ten] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[dien_thoai] [varchar](20) NULL,
	[so_du] [decimal](10, 2) NULL,
	[ngay_tao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nguoi_dung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhienChoi]    Script Date: 03/11/2024 12:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhienChoi](
	[ma_phien] [int] IDENTITY(1,1) NOT NULL,
	[ma_nguoi_dung] [int] NULL,
	[ma_may_tinh] [int] NULL,
	[thoi_gian_bat_dau] [datetime] NOT NULL,
	[thoi_gian_ket_thuc] [datetime] NULL,
	[tong_thoi_gian] [decimal](10, 2) NULL,
	[tong_chi_phi] [decimal](10, 2) NULL,
	[trang_thai] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhienChoi] ON 

INSERT [dbo].[ChiTietPhienChoi] ([ma_chi_tiet], [ma_phien], [ma_may_tinh], [thoi_gian_vao], [thoi_gian_ra], [thoi_luong]) VALUES (1, 1, 1, CAST(N'2023-10-10T10:00:00.000' AS DateTime), CAST(N'2023-10-10T12:00:00.000' AS DateTime), CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[ChiTietPhienChoi] ([ma_chi_tiet], [ma_phien], [ma_may_tinh], [thoi_gian_vao], [thoi_gian_ra], [thoi_luong]) VALUES (2, 2, 2, CAST(N'2023-10-11T15:00:00.000' AS DateTime), CAST(N'2023-10-11T16:30:00.000' AS DateTime), CAST(1.50 AS Decimal(10, 2)))
INSERT [dbo].[ChiTietPhienChoi] ([ma_chi_tiet], [ma_phien], [ma_may_tinh], [thoi_gian_vao], [thoi_gian_ra], [thoi_luong]) VALUES (3, 3, 1, CAST(N'2023-10-12T14:00:00.000' AS DateTime), CAST(N'2023-10-12T17:00:00.000' AS DateTime), CAST(3.00 AS Decimal(10, 2)))
INSERT [dbo].[ChiTietPhienChoi] ([ma_chi_tiet], [ma_phien], [ma_may_tinh], [thoi_gian_vao], [thoi_gian_ra], [thoi_luong]) VALUES (4, 4, 4, CAST(N'2023-10-13T10:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[ChiTietPhienChoi] ([ma_chi_tiet], [ma_phien], [ma_may_tinh], [thoi_gian_vao], [thoi_gian_ra], [thoi_luong]) VALUES (5, 5, 5, CAST(N'2023-10-14T09:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ChiTietPhienChoi] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaoDich] ON 

INSERT [dbo].[GiaoDich] ([ma_giao_dich], [ma_nguoi_dung], [loai_giao_dich], [so_tien], [ngay_giao_dich]) VALUES (1, 3, N'nap_tien', CAST(50000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.317' AS DateTime))
INSERT [dbo].[GiaoDich] ([ma_giao_dich], [ma_nguoi_dung], [loai_giao_dich], [so_tien], [ngay_giao_dich]) VALUES (2, 4, N'nap_tien', CAST(100000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.317' AS DateTime))
INSERT [dbo].[GiaoDich] ([ma_giao_dich], [ma_nguoi_dung], [loai_giao_dich], [so_tien], [ngay_giao_dich]) VALUES (3, 5, N'rut_tien', CAST(20000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.317' AS DateTime))
INSERT [dbo].[GiaoDich] ([ma_giao_dich], [ma_nguoi_dung], [loai_giao_dich], [so_tien], [ngay_giao_dich]) VALUES (4, 3, N'nap_tien', CAST(70000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.317' AS DateTime))
INSERT [dbo].[GiaoDich] ([ma_giao_dich], [ma_nguoi_dung], [loai_giao_dich], [so_tien], [ngay_giao_dich]) VALUES (5, 4, N'rut_tien', CAST(50000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.317' AS DateTime))
SET IDENTITY_INSERT [dbo].[GiaoDich] OFF
GO
SET IDENTITY_INSERT [dbo].[MayTinh] ON 

INSERT [dbo].[MayTinh] ([ma_may_tinh], [ten_may_tinh], [trang_thai], [vi_tri], [ngay_tao]) VALUES (1, N'PC01', N'san_sang', N'Khu v?c A', CAST(N'2024-11-02T15:49:26.310' AS DateTime))
INSERT [dbo].[MayTinh] ([ma_may_tinh], [ten_may_tinh], [trang_thai], [vi_tri], [ngay_tao]) VALUES (2, N'PC02', N'dang_su_dung', N'Khu v?c A', CAST(N'2024-11-02T15:49:26.310' AS DateTime))
INSERT [dbo].[MayTinh] ([ma_may_tinh], [ten_may_tinh], [trang_thai], [vi_tri], [ngay_tao]) VALUES (3, N'PC03', N'bao_tri', N'Khu v?c B', CAST(N'2024-11-02T15:49:26.310' AS DateTime))
INSERT [dbo].[MayTinh] ([ma_may_tinh], [ten_may_tinh], [trang_thai], [vi_tri], [ngay_tao]) VALUES (4, N'PC04', N'san_sang', N'Khu v?c B', CAST(N'2024-11-02T15:49:26.310' AS DateTime))
INSERT [dbo].[MayTinh] ([ma_may_tinh], [ten_may_tinh], [trang_thai], [vi_tri], [ngay_tao]) VALUES (5, N'PC05', N'hong', N'Khu v?c C', CAST(N'2024-11-02T15:49:26.310' AS DateTime))
SET IDENTITY_INSERT [dbo].[MayTinh] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([ma_nguoi_dung], [ten_dang_nhap], [mat_khau], [vai_tro], [ho_ten], [email], [dien_thoai], [so_du], [ngay_tao]) VALUES (1, N'admin1', N'password1', N'quan_tri', N'Nguyen Van A', N'admin1@example.com', N'0123456789', CAST(500000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.310' AS DateTime))
INSERT [dbo].[NguoiDung] ([ma_nguoi_dung], [ten_dang_nhap], [mat_khau], [vai_tro], [ho_ten], [email], [dien_thoai], [so_du], [ngay_tao]) VALUES (2, N'staff1', N'password2', N'nhan_vien', N'Tran Thi B', N'staff1@example.com', N'0987654321', CAST(200000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.310' AS DateTime))
INSERT [dbo].[NguoiDung] ([ma_nguoi_dung], [ten_dang_nhap], [mat_khau], [vai_tro], [ho_ten], [email], [dien_thoai], [so_du], [ngay_tao]) VALUES (3, N'player1', N'password3', N'nguoi_choi', N'Le Van C', N'player1@example.com', N'0912345678', CAST(100000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.310' AS DateTime))
INSERT [dbo].[NguoiDung] ([ma_nguoi_dung], [ten_dang_nhap], [mat_khau], [vai_tro], [ho_ten], [email], [dien_thoai], [so_du], [ngay_tao]) VALUES (4, N'player2', N'password4', N'nguoi_choi', N'Pham Thi D', N'player2@example.com', N'0934567890', CAST(150000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.310' AS DateTime))
INSERT [dbo].[NguoiDung] ([ma_nguoi_dung], [ten_dang_nhap], [mat_khau], [vai_tro], [ho_ten], [email], [dien_thoai], [so_du], [ngay_tao]) VALUES (5, N'player3', N'password5', N'nguoi_choi', N'Vu Van E', N'player3@example.com', N'0945678901', CAST(50000.00 AS Decimal(10, 2)), CAST(N'2024-11-02T15:49:26.310' AS DateTime))
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[PhienChoi] ON 

INSERT [dbo].[PhienChoi] ([ma_phien], [ma_nguoi_dung], [ma_may_tinh], [thoi_gian_bat_dau], [thoi_gian_ket_thuc], [tong_thoi_gian], [tong_chi_phi], [trang_thai]) VALUES (1, 3, 1, CAST(N'2023-10-10T10:00:00.000' AS DateTime), CAST(N'2023-10-10T12:00:00.000' AS DateTime), CAST(2.00 AS Decimal(10, 2)), CAST(40000.00 AS Decimal(10, 2)), N'da_ket_thuc')
INSERT [dbo].[PhienChoi] ([ma_phien], [ma_nguoi_dung], [ma_may_tinh], [thoi_gian_bat_dau], [thoi_gian_ket_thuc], [tong_thoi_gian], [tong_chi_phi], [trang_thai]) VALUES (2, 4, 2, CAST(N'2023-10-11T15:00:00.000' AS DateTime), CAST(N'2023-10-11T16:30:00.000' AS DateTime), CAST(1.50 AS Decimal(10, 2)), CAST(30000.00 AS Decimal(10, 2)), N'da_ket_thuc')
INSERT [dbo].[PhienChoi] ([ma_phien], [ma_nguoi_dung], [ma_may_tinh], [thoi_gian_bat_dau], [thoi_gian_ket_thuc], [tong_thoi_gian], [tong_chi_phi], [trang_thai]) VALUES (3, 5, 1, CAST(N'2023-10-12T14:00:00.000' AS DateTime), CAST(N'2023-10-12T17:00:00.000' AS DateTime), CAST(3.00 AS Decimal(10, 2)), CAST(60000.00 AS Decimal(10, 2)), N'da_ket_thuc')
INSERT [dbo].[PhienChoi] ([ma_phien], [ma_nguoi_dung], [ma_may_tinh], [thoi_gian_bat_dau], [thoi_gian_ket_thuc], [tong_thoi_gian], [tong_chi_phi], [trang_thai]) VALUES (4, 3, 4, CAST(N'2023-10-13T10:00:00.000' AS DateTime), NULL, NULL, NULL, N'dang_choi')
INSERT [dbo].[PhienChoi] ([ma_phien], [ma_nguoi_dung], [ma_may_tinh], [thoi_gian_bat_dau], [thoi_gian_ket_thuc], [tong_thoi_gian], [tong_chi_phi], [trang_thai]) VALUES (5, 4, 5, CAST(N'2023-10-14T09:00:00.000' AS DateTime), NULL, NULL, NULL, N'dang_choi')
SET IDENTITY_INSERT [dbo].[PhienChoi] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__MayTinh__EED6B93BEAAEE16D]    Script Date: 03/11/2024 12:57:09 PM ******/
ALTER TABLE [dbo].[MayTinh] ADD UNIQUE NONCLUSTERED 
(
	[ten_may_tinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NguoiDun__363698B3DE6E2C9F]    Script Date: 03/11/2024 12:57:09 PM ******/
ALTER TABLE [dbo].[NguoiDung] ADD UNIQUE NONCLUSTERED 
(
	[ten_dang_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GiaoDich] ADD  DEFAULT ('nap_tien') FOR [loai_giao_dich]
GO
ALTER TABLE [dbo].[GiaoDich] ADD  DEFAULT (getdate()) FOR [ngay_giao_dich]
GO
ALTER TABLE [dbo].[MayTinh] ADD  DEFAULT ('san_sang') FOR [trang_thai]
GO
ALTER TABLE [dbo].[MayTinh] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT ((0.00)) FOR [so_du]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  DEFAULT (getdate()) FOR [ngay_tao]
GO
ALTER TABLE [dbo].[PhienChoi] ADD  DEFAULT ('dang_choi') FOR [trang_thai]
GO
ALTER TABLE [dbo].[ChiTietPhienChoi]  WITH CHECK ADD FOREIGN KEY([ma_may_tinh])
REFERENCES [dbo].[MayTinh] ([ma_may_tinh])
GO
ALTER TABLE [dbo].[ChiTietPhienChoi]  WITH CHECK ADD FOREIGN KEY([ma_phien])
REFERENCES [dbo].[PhienChoi] ([ma_phien])
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD FOREIGN KEY([ma_nguoi_dung])
REFERENCES [dbo].[NguoiDung] ([ma_nguoi_dung])
GO
ALTER TABLE [dbo].[PhienChoi]  WITH CHECK ADD FOREIGN KEY([ma_may_tinh])
REFERENCES [dbo].[MayTinh] ([ma_may_tinh])
GO
ALTER TABLE [dbo].[PhienChoi]  WITH CHECK ADD FOREIGN KEY([ma_nguoi_dung])
REFERENCES [dbo].[NguoiDung] ([ma_nguoi_dung])
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD CHECK  (([loai_giao_dich]='rut_tien' OR [loai_giao_dich]='nap_tien'))
GO
ALTER TABLE [dbo].[MayTinh]  WITH CHECK ADD CHECK  (([trang_thai]='hong' OR [trang_thai]='bao_tri' OR [trang_thai]='dang_su_dung' OR [trang_thai]='san_sang'))
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD CHECK  (([vai_tro]='nguoi_choi' OR [vai_tro]='nhan_vien' OR [vai_tro]='quan_tri'))
GO
ALTER TABLE [dbo].[PhienChoi]  WITH CHECK ADD CHECK  (([trang_thai]='da_ket_thuc' OR [trang_thai]='dang_choi'))
GO
