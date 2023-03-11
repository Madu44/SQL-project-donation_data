SELECT donation_frequency, COUNT(donation) as 'Number of Donors'
from Donation_Data
JOIN Donor_Data2
on Donation_Data.id = Donor_Data2.id
GROUP by donation_frequency;


SELECT donation_frequency, SUM(donation) as 'Donation Amount in $'
from Donation_Data
JOIN Donor_Data2
on Donation_Data.id = Donor_Data2.id
GROUP by donation_frequency;



