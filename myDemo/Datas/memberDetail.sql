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


INSERT [dbo].[t_memberDetail] ([id], [user_id]) VALUES (2, 2)


INSERT [dbo].[t_memberDetail] ([id], [user_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[t_memberDetail] OFF
GO
