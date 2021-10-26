SELECT * FROM [SuperMoney].[dbo].logs;

DELETE
FROM [SuperMoney].[dbo].[logs]
WHERE "user" = 'hack3r';

DELETE TOP(3)
FROM [SuperMoney].[dbo].[logs];
