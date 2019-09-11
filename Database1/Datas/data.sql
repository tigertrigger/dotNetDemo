
SET IDENTITY_INSERT [dbo].[t_madMaterial] ON
GO

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (1, N'符京', N'www.hao123.com', 0, 1)
GO

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (2, N'陈剑飞', N'www.baidu.com', 0, 2)
GO

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (3, N'西西西西', N'www.bilibili.com', 0, 3)
GO

INSERT [dbo].[t_madMaterial] ([Id], [Name], [remark], [del_flag], [mad_order]) VALUES (5, N'咚哒哟', N'www.ilidilid.com', 0, 4)
GO

SET IDENTITY_INSERT [dbo].[t_madMaterial] OFF
GO

SET IDENTITY_INSERT [dbo].[t_memberDetail] ON
GO

INSERT [dbo].[t_memberDetail] ([id], [user_id]) VALUES (1, 1)
GO

INSERT [dbo].[t_memberDetail] ([id], [user_id]) VALUES (2, 2)
GO

INSERT [dbo].[t_memberDetail] ([id], [user_id]) VALUES (3, 3)
GO

SET IDENTITY_INSERT [dbo].[t_memberDetail] OFF
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (1, CAST(N'2019-09-01' AS Date), 125)
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (2, CAST(N'2019-09-02' AS Date), 213)
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (3, CAST(N'2019-09-03' AS Date), 333)
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (4, CAST(N'2019-09-04' AS Date), 423)
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (5, CAST(N'2019-09-05' AS Date), 466)
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (6, CAST(N'2019-09-06' AS Date), 421)
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (7, CAST(N'2019-09-07' AS Date), 250)
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (8, CAST(N'2019-09-08' AS Date), 166)
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (9, CAST(N'2019-09-09' AS Date), 186)
GO

INSERT [dbo].[pm] ([id], [date], [val]) VALUES (10, CAST(N'2019-09-10' AS Date), 211)
GO

SET IDENTITY_INSERT [dbo].[t_company] ON 

INSERT [dbo].[t_company] ([id], [name]) VALUES (1, N'广州星光皮革有限公司')
INSERT [dbo].[t_company] ([id], [name]) VALUES (2, N'深圳龙八棒有限公司')
INSERT [dbo].[t_company] ([id], [name]) VALUES (3, N'长沙烟卷厂')
INSERT [dbo].[t_company] ([id], [name]) VALUES (4, N'北京斯卡蒂电子有限公司')
INSERT [dbo].[t_company] ([id], [name]) VALUES (5, N'上海周先生有限公司')
INSERT [dbo].[t_company] ([id], [name]) VALUES (6, N'杭州孙先生有限公司')
INSERT [dbo].[t_company] ([id], [name]) VALUES (7, N'自贡黄先生有限公司')
SET IDENTITY_INSERT [dbo].[t_company] OFF
