USE master

GO

IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'WhatsappDB'
)

CREATE DATABASE [WhatsappDB]

GO