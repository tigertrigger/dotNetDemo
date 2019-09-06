CREATE TABLE [dbo].[t_madMaterial] (
    [Id]        INT           NOT NULL,
    [Name]      NVARCHAR (50) NOT NULL,
    [remark]    NVARCHAR (50) NULL,
    [del_flag]  BIT           CONSTRAINT [DF_t_madMaterial_del_flag] DEFAULT ((0)) NULL,
    [mad_order] INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_t_madMaterial_1] PRIMARY KEY CLUSTERED ([Id] ASC)
);

