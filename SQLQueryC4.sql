CREATE DATABASE SuperMoney;
USE SuperMoney;
CREATE TABLE logs ("id" INT PRIMARY KEY IDENTITY(1,1), "user" VARCHAR(50), "message" VARCHAR(50));
INSERT INTO logs ("user","message") VALUES ('hack3r', 'Connects');
INSERT INTO logs ("user","message") VALUES ('hack3r', 'Connects');
INSERT INTO logs ("user","message") VALUES ('hack3r' , 'Erases file'); 
INSERT INTO logs ("user","message") VALUES ('hack3r', 'Connects');
INSERT INTO logs ("user","message") VALUES ('hack3r', 'Create new file');
INSERT INTO logs ("user","message") VALUES ('hack3r','Leaves');
INSERT INTO logs ("user","message") VALUES ('hack3r','Connects');
INSERT INTO logs ("user","message") VALUES ('hack3r','Erases file');
INSERT INTO logs ("user","message") VALUES ('hack3r','Create new file');
INSERT INTO logs ("user","message") VALUES ('hack3r','Create new file');
INSERT INTO logs ("user","message") VALUES ('hack3r','Leaves');
INSERT INTO logs ("user","message") VALUES ('hack3r','Create new file');
INSERT INTO logs ("user","message") VALUES ('hack3r','Create new file');
INSERT INTO logs ("user","message") VALUES ('hack3r','Erases file');
INSERT INTO logs ("user","message") VALUES ('hack3r','Create new file');
INSERT INTO logs ("user","message") VALUES ('admin','Leaves');
INSERT INTO logs ("user","message") VALUES ('admin','Create new file');
INSERT INTO logs ("user","message") VALUES ('admin','Create new file');
INSERT INTO logs ("user","message") VALUES ('admin','Create new file');
INSERT INTO logs ("user","message") VALUES ('admin','Connects');
INSERT INTO logs ("user","message") VALUES ('admin','Connects');
INSERT INTO logs ("user","message") VALUES ('admin','Leaves');
INSERT INTO logs ("user","message") VALUES ('admin','Leaves');
INSERT INTO logs ("user","message") VALUES ('admin','Erases file');
INSERT INTO logs ("user","message") VALUES ('admin','Connects');
INSERT INTO logs ("user","message") VALUES ('admin','Connects');
INSERT INTO logs ("user","message") VALUES ('admin','Erases file');
INSERT INTO logs ("user","message") VALUES ('admin','Connects');
INSERT INTO logs ("user","message") VALUES ('admin','Leaves');
INSERT INTO logs ("user","message") VALUES ('admin','Create new file');

USE SuperMoney;
GO
BACKUP DATABASE SuperMoney
TO DISK = 'C:\Windows\Temp\SuperMoney.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of SuperMoney';
GO

BEGIN Transaction;
DELETE
FROM [SuperMoney].[dbo].[logs]
WHERE "user" = 'hack3r';

DELETE TOP(3)
FROM [SuperMoney].[dbo].[logs];
COMMIT Transaction;