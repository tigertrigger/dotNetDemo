CREATE TABLE [dbo].[t_memberDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_t_memberDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[t_memberDetail]  WITH CHECK ADD  CONSTRAINT [FK_t_memberDetail_t_memberDetail] FOREIGN KEY([user_id])
REFERENCES [dbo].[t_madMaterial] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[t_memberDetail] CHECK CONSTRAINT [FK_t_memberDetail_t_memberDetail]