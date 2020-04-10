--INITDATA
EXEC Login_Helper
INSERT INTO School(Name, Address, Phone) VALUES('Benerito las Americas', 'Bravo', '12345') 
INSERT INTO ClassRoom(Name, Status)
VALUES('1-A',1),('1-B',1),('2-A',1),('2-B',1),('3-A',1),('3-B',1)
exec User_Create 'Super','Lector','super.poderoso','superpoderoso@gmail.com','12345', 1, 'Admin', '2021-03-23T00:00:00', 1
exec Admin_Create 1
