-- Création de la base de données
CREATE DATABASE Bank;
GO

-- Utilisation de la base de données
USE Bank;
GO

-- Création de la table Account
CREATE TABLE Account
(
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    balance DECIMAL(18, 2) NOT NULL
);
GO

-- Insertion de trois éléments dans la table Account
INSERT INTO Account (name, balance) VALUES ('BarnabéN', 1453.32);
INSERT INTO Account (name, balance) VALUES ('GeorgeN', -251.21);
INSERT INTO Account (name, balance) VALUES ('JohnN', 124.06);
GO

-- Mise à jour des noms dans la table Account
BEGIN TRANSACTION;

UPDATE Account
SET name = LEFT(name, LEN(name) - 1)
WHERE name LIKE '%N';

-- Sélection de tous les enregistrements de la table Account
SELECT *
FROM Account;

-- Commit si tout s'est bien passé
COMMIT;
GO
