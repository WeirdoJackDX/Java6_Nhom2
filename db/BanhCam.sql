USE [master]
GO
/****** Object:  Database [BanhCam]    Script Date: 7/19/2023 9:38:51 PM ******/
CREATE DATABASE [BanhCam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanhCam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BanhCam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BanhCam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BanhCam_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BanhCam] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanhCam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanhCam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanhCam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanhCam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanhCam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanhCam] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanhCam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BanhCam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanhCam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanhCam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanhCam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanhCam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanhCam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanhCam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanhCam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanhCam] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BanhCam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanhCam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanhCam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanhCam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanhCam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanhCam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanhCam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanhCam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BanhCam] SET  MULTI_USER 
GO
ALTER DATABASE [BanhCam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanhCam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanhCam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanhCam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BanhCam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BanhCam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BanhCam] SET QUERY_STORE = OFF
GO
USE [BanhCam]
GO
/****** Object:  Table [dbo].[Chi_Tiet_Hoa_Don]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_Tiet_Hoa_Don](
	[ma_chi_tiet_hoa_don] [int] IDENTITY(1,1) NOT NULL,
	[ma_hoa_don] [int] NULL,
	[ma_sp] [int] NULL,
	[so_luong] [int] NULL,
	[gia_ban] [int] NULL,
	[gia_nhap] [int] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[ma_chi_tiet_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danh_Gia]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danh_Gia](
	[ma_danh_gia] [int] IDENTITY(1,1) NOT NULL,
	[ma_nd] [int] NULL,
	[ma_sp] [int] NULL,
	[sao_danh_gia] [int] NULL,
	[mo_ta] [nvarchar](max) NULL,
	[ngay_danh_gia] [date] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[ma_danh_gia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gio_Hang_Chi_Tiet]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gio_Hang_Chi_Tiet](
	[ma_gio_hang] [int] IDENTITY(1,1) NOT NULL,
	[ma_sp] [int] NULL,
	[ma_nd] [int] NULL,
	[so_luong] [int] NULL,
	[ngay_them] [date] NULL,
 CONSTRAINT [PK_GioHangChiTiet] PRIMARY KEY CLUSTERED 
(
	[ma_gio_hang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoa_Don]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa_Don](
	[ma_hoa_don] [int] IDENTITY(1,1) NOT NULL,
	[ma_nd] [int] NULL,
	[ngay_tao] [date] NULL,
	[ma_voucher] [int] NULL,
	[tien_giam] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[ma_hoa_don] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai_Banh]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_Banh](
	[ma_loai_banh] [int] IDENTITY(1,1) NOT NULL,
	[ten_loai_banh] [nvarchar](max) NULL,
	[ghi_chu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiBanh] PRIMARY KEY CLUSTERED 
(
	[ma_loai_banh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoi_Dung]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoi_Dung](
	[ma_nd] [int] IDENTITY(1,1) NOT NULL,
	[tai_khoan] [nvarchar](50) NOT NULL,
	[mat_khau] [nvarchar](max) NULL,
	[ho_ten] [nvarchar](max) NULL,
	[dia_chi] [nvarchar](max) NULL,
	[sdt] [nvarchar](max) NULL,
	[email] [varchar](50) NOT NULL,
	[gioi_tinh] [bit] NULL,
	[vai_tro] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ma_nd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nha_Cung_Cap]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nha_Cung_Cap](
	[ma_nha_cung_cap] [int] IDENTITY(1,1) NOT NULL,
	[ten_nha_cung_cap] [nvarchar](max) NULL,
	[ghi_chu] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[ma_nha_cung_cap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhap_Kho]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhap_Kho](
	[ma_nhap_kho] [int] IDENTITY(1,1) NOT NULL,
	[ma_nha_cung_cap] [int] NULL,
	[ma_sp] [int] NULL,
	[so_luong_nhap] [int] NULL,
	[gia_nhap_tren_moi_cai] [int] NULL,
	[ngay_nhap] [date] NULL,
	[ghi_chu] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhapKho] PRIMARY KEY CLUSTERED 
(
	[ma_nhap_kho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[San_Pham]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[San_Pham](
	[ma_sp] [int] IDENTITY(1,1) NOT NULL,
	[ma_loai_banh] [int] NULL,
	[ten_sp] [nvarchar](50) NULL,
	[so_luong] [int] NULL,
	[anh] [nvarchar](50) NULL,
	[ghi_chu] [nvarchar](max) NULL,
	[gia_ban] [int] NULL,
	[gia_nhap] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ma_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thich_San_Pham]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thich_San_Pham](
	[ma_thich_san_pham] [int] IDENTITY(1,1) NOT NULL,
	[ma_sp] [int] NULL,
	[ma_nd] [int] NULL,
	[ngay_thich] [date] NULL,
 CONSTRAINT [PK_ThichSanPham] PRIMARY KEY CLUSTERED 
(
	[ma_thich_san_pham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[ma_voucher] [int] IDENTITY(1,1) NOT NULL,
	[ten_voucher] [nvarchar](max) NULL,
	[tien_giam] [int] NULL,
	[mo_ta] [nvarchar](max) NULL,
	[giam_toi_da] [int] NULL,
	[phan_tram_giam] [int] NULL,
	[gia_tri_toi_thieu] [int] NULL,
	[loai_voucher] [bit] NULL,
	[hsd] [date] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[ma_voucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Your_Vouchers]    Script Date: 7/19/2023 9:38:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Your_Vouchers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_nd] [int] NULL,
	[ma_voucher] [int] NULL,
 CONSTRAINT [PK_YourVouchers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chi_Tiet_Hoa_Don] ON 

INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ma_chi_tiet_hoa_don], [ma_hoa_don], [ma_sp], [so_luong], [gia_ban], [gia_nhap]) VALUES (4, 2, 15, 2, 10000, 8000)
SET IDENTITY_INSERT [dbo].[Chi_Tiet_Hoa_Don] OFF
GO
SET IDENTITY_INSERT [dbo].[Danh_Gia] ON 

INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (164, 342, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (165, 343, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (166, 344, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (167, 345, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (168, 346, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (169, 347, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (170, 348, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (171, 349, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (172, 350, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (173, 351, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (174, 352, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (175, 353, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (176, 354, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (177, 355, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (178, 356, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (179, 357, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (180, 358, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (181, 359, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (182, 360, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (183, 361, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (184, 362, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (185, 363, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (186, 364, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (187, 365, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (188, 366, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (189, 367, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (190, 368, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (191, 369, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (192, 370, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (193, 371, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (194, 372, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (195, 373, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (196, 374, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (197, 375, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (198, 376, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (199, 377, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (200, 378, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (201, 379, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (202, 380, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (203, 381, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (204, 382, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (205, 383, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (206, 384, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (207, 385, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (208, 386, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (209, 387, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (210, 388, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (211, 389, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (212, 390, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (213, 391, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (214, 392, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (215, 393, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (216, 394, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (217, 395, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (218, 396, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (219, 397, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (220, 398, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (221, 399, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (222, 400, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (223, 401, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (224, 402, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (225, 403, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (226, 404, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (227, 405, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (228, 406, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (229, 407, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (230, 408, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (231, 409, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (232, 410, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (233, 411, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (234, 412, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (235, 413, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (236, 414, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (237, 415, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (238, 416, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (239, 417, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (240, 418, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (241, 419, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (242, 420, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (243, 421, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (244, 422, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (245, 423, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (246, 424, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (247, 425, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (248, 426, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (249, 427, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (250, 428, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (251, 429, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (252, 430, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (253, 431, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (254, 432, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (255, 433, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (256, 434, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (257, 435, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (258, 436, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (259, 437, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (260, 438, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (261, 439, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (262, 440, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
GO
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (263, 441, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (264, 442, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (265, 443, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (266, 444, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (267, 445, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (268, 446, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (269, 447, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (270, 448, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (271, 449, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (272, 450, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (273, 451, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (274, 452, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (275, 453, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (276, 454, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (277, 455, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (278, 456, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (279, 457, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (280, 458, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (281, 459, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (282, 460, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (283, 461, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (284, 462, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (285, 463, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (286, 464, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (287, 465, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (288, 466, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (289, 467, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (290, 468, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (291, 469, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (292, 470, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (293, 471, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (294, 472, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (295, 473, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (296, 474, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (297, 475, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (298, 476, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (299, 477, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (300, 478, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (301, 479, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (302, 480, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (303, 481, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (304, 482, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (305, 483, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (306, 484, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (307, 485, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (308, 486, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (309, 487, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (310, 488, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (311, 489, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (312, 490, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (313, 491, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (314, 492, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (315, 493, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (316, 494, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (317, 495, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (318, 496, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (319, 497, 16, 1, N'Không ngon', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (320, 498, 14, 1, N'Không biết nói gì', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (321, 499, 16, 1, N'Khong biet noi gi', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (322, 500, 19, 3, N'Tuyệt vời', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (323, 501, 12, 1, N'Bánh ngon', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (324, 502, 13, 3, N'Ngon lắm', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (325, 503, 15, 5, N'Rất ngon', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Danh_Gia] ([ma_danh_gia], [ma_nd], [ma_sp], [sao_danh_gia], [mo_ta], [ngay_danh_gia]) VALUES (326, 504, 17, 2, N'Bình thường', CAST(N'2023-04-15' AS Date))
SET IDENTITY_INSERT [dbo].[Danh_Gia] OFF
GO
SET IDENTITY_INSERT [dbo].[Gio_Hang_Chi_Tiet] ON 

INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (4, 12, 342, 1, CAST(N'2023-06-13' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (6, 13, 342, 5, CAST(N'2023-06-13' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (7, 14, 342, 9, CAST(N'2023-06-13' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (8, 16, 342, 1, CAST(N'2023-06-13' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (9, 18, 342, 18, CAST(N'2023-06-13' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (10, 19, 342, 1, CAST(N'2023-06-13' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (11, 20, 342, 4, CAST(N'2023-06-13' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (12, 15, 342, 1, CAST(N'2023-06-15' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (13, 24, 342, 1, CAST(N'2023-06-15' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (14, 17, 342, 17, CAST(N'2023-06-15' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (15, 23, 342, 1, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (16, 21, 342, 1, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (17, 31, 342, 9, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Gio_Hang_Chi_Tiet] ([ma_gio_hang], [ma_sp], [ma_nd], [so_luong], [ngay_them]) VALUES (20, 42, 342, 3, CAST(N'2023-06-17' AS Date))
SET IDENTITY_INSERT [dbo].[Gio_Hang_Chi_Tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[Hoa_Don] ON 

INSERT [dbo].[Hoa_Don] ([ma_hoa_don], [ma_nd], [ngay_tao], [ma_voucher], [tien_giam]) VALUES (2, 342, CAST(N'2023-12-06' AS Date), 1, 50000)
SET IDENTITY_INSERT [dbo].[Hoa_Don] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai_Banh] ON 

INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (4, N'Bánh kem', N'Các loại bánh kem ngọt ngào')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (5, N'Bánh mỳ', N'Các loại bánh mỳ giòn tan')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (6, N'Bánh quy', N'Các loại bánh quy thơm ngon')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (7, N'Bánh mì ngọt (Sweet bread)', N'Loại bánh này có hương vị ngọt ngào')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (8, N'Bánh dẻo (Taffy)', N'Loại bánh nhẹ và mịn được làm từ kem, socola và trứng')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (9, N'Bánh tart (Tart)', N'Loại bánh giòn và thường được làm từ bột mì, đường và bơ.')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (10, N'Bánh croissant (Croissant)', N'Loại bánh giòn và thường được làm từ bơ và mứt.')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (11, N'Bánh bao (Steamed bun)', N'Loại bánh giòn và thường được làm từ bột mì, đường và bơ.')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (12, N'Bánh bông lan (Sponge cake)', N'Loại bánh mềm và xốp được làm từ bột mì, trứng, đường và bơ')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (13, N'Bánh ngô (Cornbread)', N'Loại bánh nhẹ và mịn được làm từ kem, socola và trứng')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (14, N'Bánh rán (Donut)', N'Loại bánh mềm và xốp được làm từ bột mì, trứng, đường và bơ')
INSERT [dbo].[Loai_Banh] ([ma_loai_banh], [ten_loai_banh], [ghi_chu]) VALUES (15, N'Bánh tráng (Rice paper)', N'Loại bánh nhẹ và mịn được làm từ kem, socola và trứng')
SET IDENTITY_INSERT [dbo].[Loai_Banh] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoi_Dung] ON 

INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (342, N'user1', N'1', N'John Doe 123456789123456789123456789', N'123 Main St', N'1234567890', N'john.doe@example.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (343, N'user2', N'pass2', N'Jane Smith', N'456 Elm St', N'1234567891', N'jane.smith@example.com', 0, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (344, N'user3', N'pass3', N'Mike Johnson', N'789 Oak St', N'1234567892', N'mike.johnson@example.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (345, N'user4', N'pass4', N'Emily Davis', N'321 Maple St', N'1234567893', N'emily.davis@example.com', 0, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (346, N'user5', N'pass5', N'Sarah Wilson', N'654 Pine St', N'1234567894', N'sarah.wilson@example.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (659, N'loi01', N'loi01', N'Nguyễn Văn Lợi', N'Tôi ở nhà của bạn Lợi', N'123456789', N'loi01@gmail.com', 1, 2)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (660, N'linh02', N'linh02', N'Tô Vũ Linh', N'Ở nhà trắng', N'1234567890', N'linh02@gmail.com', 1, 1)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (661, N'tam03', N'tam03', N'Võ Minh Tâm', N'Ở lầu năm gốc', N'2345678901', N'tam03@gmail.com', 1, 1)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (662, N'son04', N'son04', N'Lê Sỹ Sơn', N'Công ty xây vật liệu xây dựng hàng đầu Việt Nam', N'3456789012', N'son03@gmail.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (663, N'trung05', N'trung05', N'Trần Văn Minh Trung', N'Tòa thị chính trung tâm thành phố Cần Thơ', N'4567890123', N'trung05', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (664, N'co06', N'co06', N'Trần Mộng Cơ', N'Landmark 81, Sóc Trăng', N'5678901234', N'co06@gmail.com', 0, 1)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (665, N'nuong07', N'nuong07', N'Nguyễn Yến Nương', N'Hồ Ba Bể', N'6789012345', N'nuong07@gmail.com', 0, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (666, N'bao08', N'bao08', N'Dương Chí Bảo', N'Hồ Bốn Bể', N'7890123456', N'bap08@gmail.com', 0, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (667, N'khang09', N'khang09', N'Nguyễn Chí Khang', N'Hầm Cá Tra', N'8901234567', N'khang09@gmail.com', 0, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (668, N'sonle01', N'sonle0123', N'Trần Kiết Tường', N'43 Cầu Giấy', N'0936547898', N'sa@gmail.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (669, N'trieukhongvui21', N'trieukg01', N'Trần Minh Triều', N'22 Hưng Lợi', N'0954547484', N'son123@gmail.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (670, N'minhkhang', N'2121sa', N'Trần Minh Khang', N'158 Lê Hồng Phong', N'0936010220', N'minhkhang121@gmail.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (671, N'hoanganh01', N'hoangkhongvui01', N'Nguyễn Hoàng Anh', N'76 Trần Phú', N'0951251478', N'hoanganh76121@gmail.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (672, N'khaisa', N'sasa11', N'Nguyễn Hoàng Khải', N'156 Lê Hồng Phong', N'0985784562', N'sasa1221@gmail.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (673, N'sasa', N'tung01', N'Trần Hùng Tùng', N'87 Sóc Trăng', N'0985745125', N'sasa@gmail.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (674, N'sonle0461', N'sonlene12', N'Lâm Minh Hòa', N'176 Trần Văn Bảo', N'0985847415', N'lamminhhoa2001@gmail.com', 1, 1)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (675, N'minhhieu', N'mihnhieu21', N'Nguyễn Minh Hiếu', N'56 Lê Hưng lợi', N'09851125147', N'minhhieu65@gmail.com', 1, 0)
INSERT [dbo].[Nguoi_Dung] ([ma_nd], [tai_khoan], [mat_khau], [ho_ten], [dia_chi], [sdt], [email], [gioi_tinh], [vai_tro]) VALUES (679, N'loi123', N'123', N'Nguyễn Văn Lợi', NULL, NULL, N'khachhang1900571@gmail.com', 0, 0)
SET IDENTITY_INSERT [dbo].[Nguoi_Dung] OFF
GO
SET IDENTITY_INSERT [dbo].[Nha_Cung_Cap] ON 

INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (1, N'Cơ sở sản xuất Bánh Ngọt Trường Phát', NULL)
INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (2, N'Tiệm bánh ngọt An Khang', NULL)
INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (3, N'ITALIO - Đơn vị sản xuất bánh ngọt hàng đầu Cần Thơ', NULL)
INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (4, N'Xưởng cung cấp bánh ngọt giá sỉ Kt’s Kitchen', NULL)
INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (5, N'Đức Phát – Đơn vị cung cấp bánh ngọt giá sỉ chất lượng cao', NULL)
INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (6, N'Bánh ngọt giá sỉ Diao Healthy Bakery', NULL)
INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (11, N'Công ty trách nhiệm hữu hạn 2 thành viên tâm', N'Nhà cung cấp các nguyên liệu làm bánh ngọt tốt nhất')
INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (12, N'Cửa hàng bánh ngọt mà không ngọt lợi', N'Nhà cung cấp các nguyên liệu làm bánh ngọt tốt nhất')
INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (13, N'Nhà máy sản xuất bánh có ngọt như môi em linh ', N'Nhà cung cấp các nguyên liệu làm bánh ngọt tốt nhất')
INSERT [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap], [ten_nha_cung_cap], [ghi_chu]) VALUES (14, N'Shop bánh ngọt như không ngọt', N'Nhà cung cấp các nguyên liệu làm bánh ngọt tốt nhất')
SET IDENTITY_INSERT [dbo].[Nha_Cung_Cap] OFF
GO
SET IDENTITY_INSERT [dbo].[Nhap_Kho] ON 

INSERT [dbo].[Nhap_Kho] ([ma_nhap_kho], [ma_nha_cung_cap], [ma_sp], [so_luong_nhap], [gia_nhap_tren_moi_cai], [ngay_nhap], [ghi_chu]) VALUES (1, 1, 33, 100, 25000, CAST(N'2023-06-07' AS Date), NULL)
INSERT [dbo].[Nhap_Kho] ([ma_nhap_kho], [ma_nha_cung_cap], [ma_sp], [so_luong_nhap], [gia_nhap_tren_moi_cai], [ngay_nhap], [ghi_chu]) VALUES (2, 2, 34, 150, 22000, CAST(N'2023-06-07' AS Date), NULL)
INSERT [dbo].[Nhap_Kho] ([ma_nhap_kho], [ma_nha_cung_cap], [ma_sp], [so_luong_nhap], [gia_nhap_tren_moi_cai], [ngay_nhap], [ghi_chu]) VALUES (4, 2, 45, 80, 36000, CAST(N'2023-06-07' AS Date), NULL)
INSERT [dbo].[Nhap_Kho] ([ma_nhap_kho], [ma_nha_cung_cap], [ma_sp], [so_luong_nhap], [gia_nhap_tren_moi_cai], [ngay_nhap], [ghi_chu]) VALUES (5, 1, 34, 200, 12500, CAST(N'2023-06-07' AS Date), NULL)
INSERT [dbo].[Nhap_Kho] ([ma_nhap_kho], [ma_nha_cung_cap], [ma_sp], [so_luong_nhap], [gia_nhap_tren_moi_cai], [ngay_nhap], [ghi_chu]) VALUES (6, 1, 38, 10, 120000, CAST(N'2023-06-07' AS Date), NULL)
INSERT [dbo].[Nhap_Kho] ([ma_nhap_kho], [ma_nha_cung_cap], [ma_sp], [so_luong_nhap], [gia_nhap_tren_moi_cai], [ngay_nhap], [ghi_chu]) VALUES (8, 1, 39, 10, 120000, CAST(N'2023-06-07' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Nhap_Kho] OFF
GO
SET IDENTITY_INSERT [dbo].[San_Pham] ON 

INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (12, 4, N'Bánh kem trái cây', 50, N'Elegant-drip-cake-11feb.png', N'Bánh kem phủ trái cây tươi ngon', 20000, 15000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (13, 5, N'Bánh mỳ bơ tỏi', 100, N'cupcake_1.jpg', N'Bánh mỳ xốp, giòn, thơm ngon', 10000, 8000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (14, 6, N'Bánh quy bơ', 200, N'Elegant-drip-cake-11feb.png', N'Bánh quy giòn tan, thơm ngon', 5000, 4000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (15, 4, N'Bánh kem socola', 30, N'Elegant-drip-cake-11feb.png', N'Bánh kem ngọt ngào vị socola', 25000, 18000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (16, 5, N'Bánh mỳ sandwich', 80, N'cupcake_1.jpg', N'Bánh sandwich được làm từ bánh mỳ tươi', 12000, 9000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (17, 6, N'Bánh quy phô mai', 150, N'banh_kep.jpg', N'Bánh quy ngọt thơm vị phô mai', 6000, 4500)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (18, 4, N'Bánh kem dâu tây', 40, N'banh_bong_lan.jpg', N'Bánh kem phủ dâu tây tươi ngon', 22000, 16000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (19, 5, N'Bánh mỳ cuộn', 70, N'banh_kep.jpg', N'Bánh mỳ cuộn đầy đặn và hấp dẫn', 15000, 11000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (20, 6, N'Bánh quy yến mạch', 180, N'cupcake_1.jpg', N'Bánh quy với thành phần chính là yến mạch', 7000, 5000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (21, 4, N'Bánh kem bơ', 25, N'chocolate-cake-1.png', N'Bánh kem ngọt ngào vị bơ', 18000, 13000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (23, 4, N'Bánh kem trái cây', 10, N'banh_bong_lan.jpg', N'Bánh kem trái cây ngọt ngào với lớp kem mịn và trái cây tươi.', 150000, 100000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (24, 5, N'Bánh bông lan', 5, N'chocolate-cake-1.png', N'Bánh bông lan mềm mịn, hương vanilla thơm ngon.', 200000, 150000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (25, 6, N'Bánh flan', 8, N'cupcake_1.jpg', N'Bánh flan mềm mịn, vị kem caramel ngọt ngào.', 120000, 80000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (26, 4, N'Bánh mì nướng', 12, N'chocolate-cake-1.png', N'Bánh mì nướng giòn tan, vị bơ thơm ngon.', 130000, 90000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (27, 5, N'Bánh pía', 15, N'cupcake_1.jpg', N'Bánh pía nhân đậu xanh thơm ngon, vỏ bánh giòn tan.', 180000, 120000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (28, 6, N'Bánh trung thu', 20, N'banh_kep.jpg', N'Bánh trung thu nhân lạc thơm ngon, hình dáng đẹp mắt.', 250000, 180000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (29, 4, N'Bánh bao', 3, N'banh_kep.jpg', N'Bánh bao nhân thịt thơm ngon, vỏ bánh mềm mịn.', 110000, 70000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (30, 5, N'Bánh dày', 7, N'cupcake_1.jpg', N'Bánh dày nhân đậu xanh thơm ngon, vị dẻo dai.', 135000, 95000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (31, 6, N'Bánh bò', 9, N'macaron_1.jpg', N'Bánh bò mềm mịn, vị cốm thơm ngon.', 160000, 110000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (32, 4, N'Bánh xèo', 6, N'chocolate-cake-1.png', N'Bánh xèo giòn tan, nhân tôm thịt thơm ngon.', 145000, 100000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (33, 5, N'Bánh tráng cuống', 11, N'macaron_3.jpg', N'Bánh tráng cuốn đủ loại nhân, thích hợp cho bữa ăn nhẹ.', 175000, 130000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (34, 6, N'Bánh tráng trộn', 14, N'Elegant-drip-cake-11feb.png', N'Bánh tráng trộn độc đáo, hương vị đậm đà.', 210000, 150000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (35, 4, N'Bánh cuống', 2, N'apple_pie_1.jpg', N'Bánh cuốn nhân thịt, nước mắm chua ngọt thơm lừng.', 100000, 65000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (36, 5, N'Bánh mì que', 4, N'macaron_1.jpg', N'Bánh mỳ que giòn tan, hương vị đặc trưng.', 120000, 80000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (37, 6, N'Bánh khoai mì', 18, N'apple_pie_1.jpg', N'Bánh khoai mì thơm ngon, vị béo ngậy.', 220000, 170000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (38, 4, N'Bánh in', 13, N'macaron_3.jpg', N'Bánh in hình vui nhộn, hương vị bắp ngọt ngon.', 160000, 110000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (39, 5, N'Bánh trôi', 16, N'chocolate-cake-1.png', N'Bánh trôi nhân đậu xanh, mứt dừa thơm ngon.', 195000, 140000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (40, 6, N'Bánh gai', 1, N'cupcake_1.jpg', N'Bánh gai mềm mịn, vị đậu xanh thơm ngon.', 90000, 60000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (41, 4, N'Bánh tráng', 17, N'macaron_3.jpg', N'Bánh trứng thơm ngon, vị béo ngậy.', 225000, 165000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (42, 5, N'Bánh kem sữa chua', 5, N'cupcake_1.jpg', N'Bánh kem sữa chua mát lạnh, hương vị tươi mới.', 190000, 130000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (43, 4, N'Bánh mì', 50, N'Elegant-drip-cake-11feb.png', N'Bánh kem phủ trái cây tươi ngon', 20000, 18000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (44, 5, N'Bánh cuốn', 100, N'cupcake_1.jpg', N'Bánh mỳ xốp, giòn, thơm ngon', 10000, 8000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (45, 6, N'Bánh bao', 150, N'Elegant-drip-cake-11feb.png', N'Bánh quy giòn tan, thơm ngon', 5000, 3000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (46, 7, N'Bánh chưng', 200, N'Elegant-drip-cake-11feb.png', N'Bánh kem ngọt ngào vị socola', 25000, 23000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (47, 8, N'Bánh tét', 250, N'cupcake_1.jpg', N'Bánh sandwich được làm từ bánh mỳ tươi', 12000, 10000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (48, 4, N'Bánh đậu xanh', 300, N'banh_kep.jpg', N'Bánh quy ngọt thơm vị phô mai', 6000, 4000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (49, 5, N'Bánh gai', 50, N'banh_bong_lan.jpg', N'Bánh kem phủ dâu tây tươi ngon', 22000, 20000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (50, 6, N'Bánh tráng', 100, N'banh_kep.jpg', N'Bánh mỳ cuộn đầy đặn và hấp dẫn', 15000, 13000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (51, 7, N'Bánh tráng nướng', 150, N'cupcake_1.jpg', N'Bánh quy với thành phần chính là yến mạch', 7000, 5000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (52, 8, N'Bánh xèo', 200, N'chocolate-cake-1.png', N'Bánh kem ngọt ngào vị bơ', 18000, 16000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (53, 9, N'Bánh khoai mì', 50, N'banh_bong_lan.jpg', N'Bánh kem trái cây ngọt ngào với lớp kem mịn và trái cây tươi.', 150000, 148000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (54, 10, N'Bánh canh', 100, N'chocolate-cake-1.png', N'Bánh bông lan mềm mịn, hương vanilla thơm ngon.', 200000, 198000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (55, 11, N'Bánh trôi', 150, N'cupcake_1.jpg', N'Bánh flan mềm mịn, vị kem caramel ngọt ngào.', 120000, 118000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (56, 12, N'Bánh trung thu', 50, N'chocolate-cake-1.png', N'Bánh mì nướng giòn tan, vị bơ thơm ngon.', 130000, 128000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (57, 13, N'Bánh dày', 100, N'cupcake_1.jpg', N'Bánh pía nhân đậu xanh thơm ngon, vỏ bánh giòn tan.', 180000, 178000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (58, 14, N'Bánh bột lọc', 150, N'banh_kep.jpg', N'Bánh trung thu nhân lạc thơm ngon, hình dáng đẹp mắt.', 250000, 248000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (59, 15, N'Bánh phu thê', 50, N'banh_kep.jpg', N'Bánh bao nhân thịt thơm ngon, vỏ bánh mềm mịn.', 110000, 108000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (60, 4, N'Bánh rán', 100, N'cupcake_1.jpg', N'Bánh dày nhân đậu xanh thơm ngon, vị dẻo dai.', 135000, 133000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (61, 5, N'Bánh lá', 150, N'macaron_1.jpg', N'Bánh bò mềm mịn, vị cốm thơm ngon.', 160000, 158000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (62, 6, N'Bánh ướt', 50, N'chocolate-cake-1.png', N'Bánh xèo giòn tan, nhân tôm thịt thơm ngon.', 145000, 143000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (63, 7, N'Bánh bột lọc lá', 100, N'macaron_3.jpg', N'Bánh tráng cuốn đủ loại nhân, thích hợp cho bữa ăn nhẹ.', 175000, 173000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (64, 10, N'Bánh bột lọc trần', 150, N'Elegant-drip-cake-11feb.png', N'Bánh tráng trộn độc đáo, hương vị đậm đà.', 210000, 208000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (65, 11, N'Bánh bèo', 50, N'apple_pie_1.jpg', N'Bánh cuốn nhân thịt, nước mắm chua ngọt thơm lừng.', 100000, 98000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (66, 12, N'Bánh nậm', 100, N'macaron_1.jpg', N'Bánh mỳ que giòn tan, hương vị đặc trưng.', 120000, 118000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (67, 13, N'Bánh tôm', 150, N'apple_pie_1.jpg', N'Bánh khoai mì thơm ngon, vị béo ngậy.', 220000, 218000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (68, 14, N'Bánh khúc', 50, N'macaron_3.jpg', N'Bánh in hình vui nhộn, hương vị bắp ngọt ngon.', 160000, 158000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (69, 15, N'Bánh ít', 100, N'chocolate-cake-1.png', N'Bánh trôi nhân đậu xanh, mứt dừa thơm ngon.', 195000, 193000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (70, 4, N'Bánh tài lộc', 150, N'cupcake_1.jpg', N'Bánh gai mềm mịn, vị đậu xanh thơm ngon.', 90000, 88000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (71, 5, N'Bánh bột lọc lá cẩm', 50, N'macaron_3.jpg', N'Bánh trứng thơm ngon, vị béo ngậy.', 225000, 223000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (72, 6, N'Bánh tôm chiên', 100, N'cupcake_1.jpg', N'Bánh kem sữa chua mát lạnh, hương vị tươi mới.', 190000, 188000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (73, 7, N'Bánh tôm hồ tây', 150, N'Elegant-drip-cake-11feb.png', N'Bánh kem trái cây ngọt ngào với lớp kem mịn và trái cây tươi.', 15000, 13000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (74, 6, N'Bánh đúc', 50, N'cupcake_1.jpg', N'Bánh bông lan mềm mịn, hương vanilla thơm ngon.', 7000, 5000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (75, 7, N'Bánh đa lợn', 100, N'Elegant-drip-cake-11feb.png', N'Bánh flan mềm mịn, vị kem caramel ngọt ngào.', 18000, 16000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (76, 10, N'Bánh đa cua', 150, N'Elegant-drip-cake-11feb.png', N'Bánh mì nướng giòn tan, vị bơ thơm ngon.', 150000, 148000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (77, 11, N'Bánh hỏi', 50, N'cupcake_1.jpg', N'Bánh pía nhân đậu xanh thơm ngon, vỏ bánh giòn tan.', 200000, 198000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (78, 12, N'Bánh bèo xào', 100, N'banh_kep.jpg', N'Bánh trung thu nhân lạc thơm ngon, hình dáng đẹp mắt.', 120000, 118000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (79, 5, N'Bánh giò', 150, N'banh_bong_lan.jpg', N'Bánh bao nhân thịt thơm ngon, vỏ bánh mềm mịn.', 130000, 128000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (80, 6, N'Bánh đậu xanh nướng', 50, N'banh_kep.jpg', N'Bánh dày nhân đậu xanh thơm ngon, vị dẻo dai.', 180000, 178000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (81, 7, N'Bánh phồng tôm', 100, N'cupcake_1.jpg', N'Bánh bò mềm mịn, vị cốm thơm ngon.', 250000, 248000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (82, 6, N'Bánh canh cua', 150, N'chocolate-cake-1.png', N'Bánh xèo giòn tan, nhân tôm thịt thơm ngon.', 90000, 88000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (83, 7, N'Bánh canh bột lọc', 50, N'Elegant-drip-cake-11feb.png', N'Bánh tráng cuốn đủ loại nhân, thích hợp cho bữa ăn nhẹ.', 225000, 223000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (84, 14, N'Bánh canh bột gạo', 100, N'cupcake_1.jpg', N'Bánh tráng trộn độc đáo, hương vị đậm đà.', 190000, 188000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (85, 15, N'Bánh bột gạo', 150, N'Elegant-drip-cake-11feb.png', N'Bánh cuốn nhân thịt, nước mắm chua ngọt thơm lừng.', 15000, 13000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (86, 4, N'Bánh dân gian', 50, N'Elegant-drip-cake-11feb.png', N'Bánh mỳ que giòn tan, hương vị đặc trưng.', 7000, 5000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (87, 5, N'Bánh bột lọc chay', 100, N'cupcake_1.jpg', N'Bánh khoai mì thơm ngon, vị béo ngậy.', 120000, 118000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (88, 6, N'Bánh hấp', 150, N'banh_kep.jpg', N'Bánh in hình vui nhộn, hương vị bắp ngọt ngon.', 130000, 128000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (89, 7, N'Bánh đúc lòng gà', 50, N'banh_bong_lan.jpg', N'Bánh trôi nhân đậu xanh, mứt dừa thơm ngon.', 180000, 178000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (90, 14, N'Bánh dày lá chuối', 100, N'banh_kep.jpg', N'Bánh gai mềm mịn, vị đậu xanh thơm ngon.', 250000, 248000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (91, 15, N'Bánh nấm', 150, N'cupcake_1.jpg', N'Bánh trứng thơm ngon, vị béo ngậy.', 90000, 88000)
INSERT [dbo].[San_Pham] ([ma_sp], [ma_loai_banh], [ten_sp], [so_luong], [anh], [ghi_chu], [gia_ban], [gia_nhap]) VALUES (92, 4, N'Bánh chưng lòng gà', 150, N'chocolate-cake-1.png', N'Bánh kem sữa chua mát lạnh, hương vị tươi mới.', 225000, 223000)
SET IDENTITY_INSERT [dbo].[San_Pham] OFF
GO
SET IDENTITY_INSERT [dbo].[Thich_San_Pham] ON 

INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (10971, 12, 343, CAST(N'2023-06-20' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (10972, 12, 344, CAST(N'2023-06-21' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (10973, 12, 345, CAST(N'2023-06-22' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (10974, 12, 346, CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11046, 13, 343, CAST(N'2023-06-20' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11047, 13, 344, CAST(N'2023-06-21' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11048, 13, 345, CAST(N'2023-06-22' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11049, 13, 346, CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11362, 13, 659, CAST(N'2024-05-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11363, 13, 660, CAST(N'2024-05-02' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11364, 13, 661, CAST(N'2024-05-03' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11365, 13, 662, CAST(N'2024-05-04' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11366, 13, 663, CAST(N'2024-05-05' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11367, 13, 664, CAST(N'2024-05-06' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11368, 13, 665, CAST(N'2024-05-07' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11369, 13, 666, CAST(N'2024-05-08' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11370, 13, 667, CAST(N'2024-05-09' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11371, 14, 343, CAST(N'2023-06-20' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11372, 14, 344, CAST(N'2023-06-21' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11373, 14, 345, CAST(N'2023-06-22' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11374, 14, 346, CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11592, 15, 343, CAST(N'2023-06-20' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11593, 15, 344, CAST(N'2023-06-21' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11594, 15, 345, CAST(N'2023-06-22' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11595, 15, 346, CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11849, 16, 342, CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11850, 16, 343, CAST(N'2023-06-20' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11851, 16, 344, CAST(N'2023-06-21' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11852, 16, 345, CAST(N'2023-06-22' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (11853, 16, 346, CAST(N'2023-06-23' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12264, 17, 659, CAST(N'2024-05-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12265, 17, 660, CAST(N'2024-05-02' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12266, 17, 661, CAST(N'2024-05-03' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12267, 17, 662, CAST(N'2024-05-04' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12268, 17, 663, CAST(N'2024-05-05' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12269, 17, 664, CAST(N'2024-05-06' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12270, 17, 665, CAST(N'2024-05-07' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12271, 17, 666, CAST(N'2024-05-08' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12272, 17, 667, CAST(N'2024-05-09' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12473, 14, 659, CAST(N'2024-05-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12474, 14, 660, CAST(N'2024-05-02' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12475, 14, 661, CAST(N'2024-05-03' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12476, 14, 662, CAST(N'2024-05-04' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12477, 14, 663, CAST(N'2024-05-05' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12478, 14, 664, CAST(N'2024-05-06' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12479, 14, 665, CAST(N'2024-05-07' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12480, 14, 666, CAST(N'2024-05-08' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12481, 14, 667, CAST(N'2024-05-09' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12541, 15, 659, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12542, 15, 660, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12543, 15, 661, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12544, 15, 662, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12545, 15, 663, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12546, 15, 664, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12547, 15, 665, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12548, 15, 666, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12549, 18, 343, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12550, 18, 344, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12551, 18, 345, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12552, 18, 346, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12711, 19, 343, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12712, 19, 344, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12713, 19, 345, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12714, 19, 346, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12988, 20, 343, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12989, 20, 344, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12990, 20, 345, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (12991, 20, 346, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13245, 21, 343, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13246, 21, 344, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13247, 21, 345, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13248, 21, 346, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13402, 23, 343, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13403, 23, 344, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13404, 23, 345, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13405, 23, 346, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13459, 24, 343, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13460, 24, 344, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13461, 24, 345, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13462, 24, 346, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13775, 24, 659, CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13776, 27, 342, CAST(N'2023-06-15' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13777, 28, 342, CAST(N'2023-06-15' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13778, 26, 342, CAST(N'2023-06-15' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13779, 25, 342, CAST(N'2023-06-15' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13781, 20, 342, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13784, 21, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13786, 71, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13788, 12, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13789, 55, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13790, 30, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13791, 23, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13794, 37, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13796, 42, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13797, 17, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13798, 13, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13799, 14, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13800, 18, 342, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13801, 13, 679, CAST(N'2023-06-17' AS Date))
GO
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13802, 14, 679, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13803, 15, 679, CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Thich_San_Pham] ([ma_thich_san_pham], [ma_sp], [ma_nd], [ngay_thich]) VALUES (13804, 18, 679, CAST(N'2023-06-17' AS Date))
SET IDENTITY_INSERT [dbo].[Thich_San_Pham] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([ma_voucher], [ten_voucher], [tien_giam], [mo_ta], [giam_toi_da], [phan_tram_giam], [gia_tri_toi_thieu], [loai_voucher], [hsd]) VALUES (1, N'GIAM50K', 50000, N'Giảm 50k dành cho đơn hàng của bạn', 50000, NULL, 50000, 1, CAST(N'2023-07-01' AS Date))
INSERT [dbo].[Voucher] ([ma_voucher], [ten_voucher], [tien_giam], [mo_ta], [giam_toi_da], [phan_tram_giam], [gia_tri_toi_thieu], [loai_voucher], [hsd]) VALUES (2, N'GIAM20K', 20000, N'Giảm 20K dành cho đơn hàng của bạn', 20000, NULL, 20000, 1, CAST(N'2023-08-01' AS Date))
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uc_email]    Script Date: 7/19/2023 9:38:52 PM ******/
ALTER TABLE [dbo].[Nguoi_Dung] ADD  CONSTRAINT [uc_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uc_tai_khoan]    Script Date: 7/19/2023 9:38:52 PM ******/
ALTER TABLE [dbo].[Nguoi_Dung] ADD  CONSTRAINT [uc_tai_khoan] UNIQUE NONCLUSTERED 
(
	[tai_khoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [AK_TransactionID]    Script Date: 7/19/2023 9:38:52 PM ******/
ALTER TABLE [dbo].[Thich_San_Pham] ADD  CONSTRAINT [AK_TransactionID] UNIQUE NONCLUSTERED 
(
	[ma_nd] ASC,
	[ma_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Nguoi_Dung] ADD  CONSTRAINT [DF_NguoiDung_gioiTinh]  DEFAULT ((1)) FOR [gioi_tinh]
GO
ALTER TABLE [dbo].[Nguoi_Dung] ADD  CONSTRAINT [DF_NguoiDung_vaiTro]  DEFAULT ((0)) FOR [vai_tro]
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([ma_hoa_don])
REFERENCES [dbo].[Hoa_Don] ([ma_hoa_don])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[San_Pham] ([ma_sp])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[Danh_Gia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_SanPham] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[San_Pham] ([ma_sp])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Danh_Gia] CHECK CONSTRAINT [FK_DanhGia_SanPham]
GO
ALTER TABLE [dbo].[Gio_Hang_Chi_Tiet]  WITH CHECK ADD  CONSTRAINT [FK_GioHangChiTiet_NguoiDung] FOREIGN KEY([ma_nd])
REFERENCES [dbo].[Nguoi_Dung] ([ma_nd])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Gio_Hang_Chi_Tiet] CHECK CONSTRAINT [FK_GioHangChiTiet_NguoiDung]
GO
ALTER TABLE [dbo].[Gio_Hang_Chi_Tiet]  WITH CHECK ADD  CONSTRAINT [FK_GioHangChiTiet_SanPham] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[San_Pham] ([ma_sp])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Gio_Hang_Chi_Tiet] CHECK CONSTRAINT [FK_GioHangChiTiet_SanPham]
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NguoiDung] FOREIGN KEY([ma_nd])
REFERENCES [dbo].[Nguoi_Dung] ([ma_nd])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoa_Don] CHECK CONSTRAINT [FK_DonHang_NguoiDung]
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_Voucher] FOREIGN KEY([ma_voucher])
REFERENCES [dbo].[Voucher] ([ma_voucher])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoa_Don] CHECK CONSTRAINT [FK_DonHang_Voucher]
GO
ALTER TABLE [dbo].[Nhap_Kho]  WITH CHECK ADD  CONSTRAINT [FK_NhapKho_NhaCungCap] FOREIGN KEY([ma_nha_cung_cap])
REFERENCES [dbo].[Nha_Cung_Cap] ([ma_nha_cung_cap])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nhap_Kho] CHECK CONSTRAINT [FK_NhapKho_NhaCungCap]
GO
ALTER TABLE [dbo].[Nhap_Kho]  WITH CHECK ADD  CONSTRAINT [FK_NhapKho_SanPham1] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[San_Pham] ([ma_sp])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nhap_Kho] CHECK CONSTRAINT [FK_NhapKho_SanPham1]
GO
ALTER TABLE [dbo].[San_Pham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiBanh] FOREIGN KEY([ma_loai_banh])
REFERENCES [dbo].[Loai_Banh] ([ma_loai_banh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[San_Pham] CHECK CONSTRAINT [FK_SanPham_LoaiBanh]
GO
ALTER TABLE [dbo].[Thich_San_Pham]  WITH CHECK ADD  CONSTRAINT [FK_Thich_San_Pham_Nguoi_Dung] FOREIGN KEY([ma_nd])
REFERENCES [dbo].[Nguoi_Dung] ([ma_nd])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Thich_San_Pham] CHECK CONSTRAINT [FK_Thich_San_Pham_Nguoi_Dung]
GO
ALTER TABLE [dbo].[Thich_San_Pham]  WITH CHECK ADD  CONSTRAINT [FK_ThichSanPham_SanPham1] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[San_Pham] ([ma_sp])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Thich_San_Pham] CHECK CONSTRAINT [FK_ThichSanPham_SanPham1]
GO
ALTER TABLE [dbo].[Your_Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_YourVouchers_NguoiDung] FOREIGN KEY([ma_nd])
REFERENCES [dbo].[Nguoi_Dung] ([ma_nd])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Your_Vouchers] CHECK CONSTRAINT [FK_YourVouchers_NguoiDung]
GO
ALTER TABLE [dbo].[Your_Vouchers]  WITH CHECK ADD  CONSTRAINT [FK_YourVouchers_Voucher] FOREIGN KEY([ma_voucher])
REFERENCES [dbo].[Voucher] ([ma_voucher])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Your_Vouchers] CHECK CONSTRAINT [FK_YourVouchers_Voucher]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá nhập trên mỗi cái' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Nhap_Kho', @level2type=N'COLUMN',@level2name=N'gia_nhap_tren_moi_cai'
GO
USE [master]
GO
ALTER DATABASE [BanhCam] SET  READ_WRITE 
GO
