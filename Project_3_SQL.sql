USE Project_3_DataCleaning;
SELECT * FROM data;

# narrow down the number of columns to the ones which are relevant
CREATE TABLE original (
SELECT Id, IsSelfMentioned, Favorites, SenderAccountYears, SenderFollowers, Emojis, Punctuations, UpperCaseLetter, Letter, IsCyberbullying
FROM Project_3_DataCleaning.data);

# Total number of Cyberbullies: 2500
SELECT count(IsCyberBullying)
FROM original
WHERE IsCyberBullying = 1;

# Observation 1: Most bullies are from newly created accounts
CREATE TABLE Observation_1 (
SELECT SenderAccountYears, IsSelfMentioned, count(IsCyberbullying) AS BullyCases, 
count(IsCyberBullying)/(SELECT count(IsCyberBullying)
FROM original
WHERE IsCyberBullying = 1) AS PercentageOfAllBullies
FROM original
WHERE IsCyberbullying = 1
GROUP BY SenderAccountYears
ORDER BY count(IsCyberbullying) DESC);

# More than 60% of Cyberbullying cases are from accounts with less than 3 years of existance
SELECT sum(PercentageOfAllBullies)
FROM Observation_1
WHERE SenderAccountYears <= 3;

# Observation 2: The biggest amount of Cyberbullying cases are texts less than 100 characters
CREATE TABLE Observation_2 (
SELECT Letter, IsSelfMentioned, count(IsCyberbullying) AS BullyCases, 
count(IsCyberBullying)/(SELECT count(IsCyberBullying)
FROM original
WHERE IsCyberBullying = 1) AS PercentageOfAllBullies
FROM original
WHERE IsCyberbullying = 1
GROUP BY Letter
ORDER BY BullyCases DESC);

# More than 70% of Cyberbully cases are texts with less than 100 characters
SELECT sum(PercentageOfAllBullies)
FROM Observation_2
WHERE Letter <= 100;

# Observation_3: The use of punctuations and upper cases is less prevalent among confirmed Cyberbullying cases
CREATE TABLE Observation_3 (
SELECT Punctuations, UpperCaseLetter, count(IsCyberbullying),
count(IsCyberBullying)/(SELECT count(IsCyberBullying)
FROM original
WHERE IsCyberBullying = 1) AS PercentageOfAllBullies
FROM original
WHERE IsCyberbullying = 1
GROUP BY Punctuations
ORDER BY count(IsCyberbullying) DESC);

# More than 76% of Cyberbullying cases have less than 3 punctuations in the texts
SELECT sum(PercentageOfAllBullies)
FROM Observation_3
WHERE Punctuations < 3;

# Table 1: Observation 1
SELECT *
FROM Observation_1;

# Table 2: Observation 2
SELECT *
FROM Observation_2;

# Table 3: Observation 3
SELECT *
FROM Observation_3;
