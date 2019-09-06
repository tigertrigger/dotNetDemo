CREATE TABLE [dbo].[t_memberDetail] (
    [id]      INT IDENTITY (1, 1) NOT NULL,
    [user_id] INT NULL,
    CONSTRAINT [PK_t_memberDetail] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_t_memberDetail_t_memberDetail] FOREIGN KEY ([user_id]) REFERENCES [dbo].[t_madMaterial] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
);

