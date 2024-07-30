/*
 Navicat Premium Data Transfer

 Source Server         : localhost sqlserver
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : localhost:1433
 Source Catalog        : TestDb
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 30/07/2024 12:42:22
*/


-- ----------------------------
-- Table structure for example_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[example_table]') AND type IN ('U'))
	DROP TABLE [dbo].[example_table]
GO

CREATE TABLE [dbo].[example_table] (
  [test] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[example_table] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of example_table
-- ----------------------------
INSERT INTO [dbo].[example_table] ([test]) VALUES (N'111')
GO

INSERT INTO [dbo].[example_table] ([test]) VALUES (N'222')
GO

