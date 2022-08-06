#Q1. Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates. (4 rows)
SELECT 
CONCAT(g.FirstName, ' ', g.LastName) Name,
rv.RoomID,
rv.StartDate,
rv.EndDate
FROM reservation rv
INNER JOIN guest g ON rv.guestid=g.guestid
WHERE rv.enddate LIKE '2023-07%';

#Q2. Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation. (11 rows)
SELECT
CONCAT(g.FirstName, ' ', g.LastName) Name,
rv.RoomID,
rv.StartDate,
rv.EndDate
FROM guest g
INNER JOIN reservation rv ON g.guestid=rv.guestid
INNER JOIN room rm ON rv.roomid=rm.roomid
WHERE rm.amenities LIKE '%Jacuzzi%';

#Q3. Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.) (2 rows)
SELECT 
CONCAT(g.FirstName, ' ', g.LastName) Name,
rv.RoomID,
rv.StartDate,
rv.NoofAdults,
rv.NoofChildren
FROM guest g
INNER JOIN reservation rv ON g.guestid=rv.guestid
WHERE CONCAT(g.FirstName, ' ', g.LastName) = 'Syahirah Sapnan';

#Q4. Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room. (eg306,402 no rv) (26 rows)
SELECT 
r.RoomID,
rv.ReservationID,
rv.TotalRoomCost
FROM room r
LEFT OUTER JOIN reservation rv ON r.roomid=rv.roomid;

#Q5. Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023. (0 rows - no such rooms!)
SELECT 
RoomID,
SUM(NoofAdults+NoofChildren) TotalNoofGuests,
StartDate,
EndDate
FROM Reservation
GROUP BY reservationid
HAVING SUM(NoofAdults+NoofChildren) >= 3 AND (startdate LIKE '2023-04%' OR enddate LIKE '2023-04%');

#Q6. Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name. (11 rows)
SELECT 
CONCAT(g.FirstName, ' ', g.LastName) Name,
COUNT(rv.guestid) NoofReservations
FROM guest g
INNER JOIN reservation rv ON g.guestid=rv.guestid
group by rv.guestid
ORDER BY COUNT(rv.guestid) DESC, g.lastname;

#Q7. Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.) (1 row)
SELECT CONCAT(FirstName, ' ', LastName) Name, Address, Phone
FROM Guest
WHERE Phone = '(291) 553-0508';