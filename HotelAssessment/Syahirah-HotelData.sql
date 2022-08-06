INSERT INTO Guest (FirstName,LastName,Address,City,State,Zip,Phone)VALUES 
('Syahirah', 'Sapnan','123 Rosewood Dr.','Laville','KA',564123,'(123) 456-7890'),
('Mack', 'Simmer','379 Old Shore Street','Council Bluffs','IA',51501,'(291) 553-0508'),
('Bettyann', 'Seery','750 Wintergreen Dr.','Wasilla','AK',99654,'(478) 277-9632'),
('Duane', 'Cullison','9662 Foxrun Lane','Harlingen','TX',78552,'(308) 494-0198'),
('Karie', 'Yang','9378 W. Augusta Ave.','West Deptford','NJ',08096,'(214) 730-0298'),
('Aurore', 'Lipton','762 Wild Rose Street','Saginaw','MI',48601,'(377) 507-0974'),
('Zachery', 'Luechtefeld','7 Poplar Dr.','Arvada','CO',80003,'(814) 485-2615'),
('Jeremiah', 'Pendergrass','70 Oakwood St.','Zion','IL',60099,'(279) 491-0960'),
('Walter', 'Holaway','7556 Arrowhead St.','Cumberland','RI',02864,'(446) 396-6785'),
('Wilfred', 'Vise','77 West Surrey Street','Oswego','NY',13126,'(834) 727-1001'),
('Maritza', 'Tilton','939 Linda Rd.','Burke','VA',22015,'(446) 351-6860'),
('Joleen', 'Tison','87 Queen St.','Drexel Hill','PA',19026,'(231) 893-2755');

INSERT INTO Room VALUES
(201,'Double','Microwave, Jacuzzi',0,2,4,199.99,10),
(202,'Double','Refrigerator',1,2,4,174.99,10),
(203,'Double','Microwave, Jacuzzi',0,2,4,199.99,10),
(204,'Double','Refrigerator',1,2,4,174.99,10),
(205,'Single','Microwave, Refrigerator, Jacuzzi',0,2,2,174.99,null),
(206,'Single','Microwave, Refrigerator',1,2,2,149.99,null),
(207,'Single','Microwave, Refrigerator, Jacuzzi',0,2,2,174.99,null),
(208,'Single','Microwave, Refrigerator',1,2,2,149.99,null),
(301,'Double','Microwave, Jacuzzi',0,2,4,199.99,10),
(302,'Double','Refrigerator',1,2,4,174.99,10),
(303,'Double','Microwave, Jacuzzi',0,2,4,199.99,10),
(304,'Double','Refrigerator',1,2,4,174.99,10),
(305,'Single','Microwave, Refrigerator, Jacuzzi',0,2,2,174.99,null),
(306,'Single','Microwave, Refrigerator',1,2,2,149.99,null),
(307,'Single','Microwave, Refrigerator, Jacuzzi',0,2,2,174.99,null),
(308,'Single','Microwave, Refrigerator',1,2,2,149.99,null),
(401,'Suite','Microwave, Refrigerator, Oven',1,3,8,399.99,20),
(402,'Suite','Microwave, Refrigerator, Oven',1,3,8,399.99,20);

INSERT INTO Reservation (RoomID,GuestID,NoofAdults,NoofChildren,StartDate,EndDate,TotalRoomCost) VALUES
(308,2,1,0,'2023-02-02','2023-02-04',299.98),
(203,3,2,1,'2023-02-05','2023-02-10',999.95),
(305,4,2,0,'2023-02-22','2023-02-24',349.98),
(201,5,2,2,'2023-03-06','2023-03-07',199.99),
(307,1,1,1,'2023-03-17','2023-03-20',524.97),
(302,6,3,0,'2023-03-18','2023-03-23',924.95),
(202,7,2,2,'2023-03-29','2023-03-31',349.98),
(304,8,2,0,'2023-03-31','2023-04-05',874.95),
(301,9,1,0,'2023-04-09','2023-04-13',799.96),
(207,10,1,1,'2023-04-23','2023-04-24',174.99),
(401,11,2,4,'2023-05-30','2023-06-02',1199.97),
(206,12,2,0,'2023-06-10','2023-06-14',599.96),
(208,12,1,0,'2023-06-10','2023-06-14',599.96),
(304,6,3,0,'2023-06-17','2023-06-18',184.99),
(205,1,2,0,'2023-06-28','2023-07-02',699.96),
(204,9,3,1,'2023-07-13','2023-07-14',184.99),
(401,10,4,2,'2023-07-18','2023-07-21',1259.97),
(303,3,2,1,'2023-07-28','2023-07-29',199.99),
(305,3,1,0,'2023-08-30','2023-09-01',349.98),
(208,2,2,0,'2023-09-16','2023-09-17',149.99),
(203,5,2,2,'2023-09-13','2023-09-15',399.98),
(401,4,2,2,'2023-11-22','2023-11-25',1199.97),
(206,2,2,0,'2023-11-22','2023-11-25',449.97),
(301,2,2,2,'2023-11-22','2023-11-25',599.97),
(302,11,2,0,'2023-12-24','2023-12-28',699.96);

DELETE FROM Reservation WHERE GuestID=8;

DELETE FROM Guest WHERE GuestID=8;