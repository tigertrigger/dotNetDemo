CREATE TABLE [dbo].[t_madMaterial](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[remark] [nvarchar](50) NULL,
	[del_flag] [bit] NULL CONSTRAINT [DF_t_madMaterial_del_flag]  DEFAULT ((0)),
	[mad_order] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_t_madMaterial_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]