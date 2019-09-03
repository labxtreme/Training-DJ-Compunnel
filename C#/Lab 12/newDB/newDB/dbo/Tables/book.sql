﻿CREATE TABLE [dbo].[book](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[book_name] [varchar](40) NULL,
	[book_cat_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[book_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[book]  WITH CHECK ADD FOREIGN KEY([book_cat_id])
REFERENCES [dbo].[Book_cat] ([Book_cat_Id])