-- COUNT AND SUM OF DONATIONS BY FREQUENCY 

-- count of donations by frequency
SELECT 
  donation_frequency, 
  COUNT(donation) AS 'Number of Donors'
FROM Donation_Data D
JOIN Donor_Data2 D2
ON D.id = D2.id
GROUP by donation_frequency;

-- sum of donations by frequency
SELECT 
  donation_frequency, 
  SUM(donation) AS 'Donation Amount in $'
FROM Donation_Data D
JOIN Donor_Data2 D2
ON D.id = D2.id
GROUP by donation_frequency;




-- COUNT AND SUM OF DONATIONS BY SHIRT SIZE
SELECT 
  shirt_size, 
  COUNT(donation), 
  SUM(donation)
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
GROUP by shirt_size;




-- DONORS WITH UNIVERSITY EDU THAT DONATES WEEKLY AND ABOVE 400
SELECT 
  D.first_name, 
  D.last_name, 
  D.state, 
  D.donation, 
  D2.donation_frequency, 
  D2.university
FROM Donation_Data D
JOIN Donor_Data2 D2
ON D.id = D2.id
WHERE donation_frequency = 'Weekly'
AND donation >= 400
AND university != 'null'
ORDER BY donation




-- TOP 10 MALE AND FEMALE DONORS WHO DONATED BETWEEN 400 AND 500

-- top 10 male donors who donated between 400 and 500
SELECT 
  first_name,
  last_name,
  gender,
  donation,
  state,
  donation_frequency
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender = 'Male'
GROUP BY donation
HAVING donation BETWEEN 400 AND 500
ORDER BY donation DESC
LIMIT 10;

-- top 10 female donors who donated between 400 and 500
SELECT
  first_name, 
  last_name, 
  gender, 
  donation,
  state, 
  donation_frequency
FROM Donation_Data
JOIN Donor_Data2
ON Donation_Data.id = Donor_Data2.id
WHERE gender = 'Female'
GROUP BY donation
HAVING donation BETWEEN 400 AND 500
ORDER BY donation DESC
LIMIT 10;




-- TOP 10 STATES WITH THE HIGHEST DONORS AND LEAST 10 STATES

-- top 10 states with highest donors
SELECT 
  state, 
  COUNT(*)
FROM Donation_Data
GROUP BY state
ORDER BY COUNT(*) DESC
LIMIT 10;

-- least 10 states of donors
SELECT 
  state, 
  COUNT(*)
FROM Donation_Data
GROUP BY state
ORDER BY COUNT(*)
LIMIT 10;
