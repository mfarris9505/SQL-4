--Initial Setup to remove previously created tables 
DROP TABLE IF EXISTS Dunder_Mifflin;

--Table Creation
CREATE TABLE Dunder_Mifflin 
(
Employee_ID INT  PRIMARY KEY,
Employee varchar(100) NOT NULL,
Title varchar(100) NOT NULL,
Supervisor INT 
)
;

-- Insert Values into the Tables 
INSERT INTO Dunder_Mifflin VALUES
('1', 'Jane Levinson','Vice President of Northeastern Sales','0'),
('2', 'Michael Scott','Regional Manager Scranton Branch','1'),
('3', 'Jim Halpert','Assistant Regional Manager','2'),
('4', 'Dwight Shrute','Assistant to the Regional Manager','2'),
('5', 'Pam Beasley','Secretary','2'),
('6', 'Stanley Hudson ','Sales Representative','3'),
('7', 'Phylis Lapin','Sales Representative','3'),
('8', 'Angela Martin','Senior Accountant', '4'),
('9' , 'Oscar Martinez','Accountant','8'),
('10','Kevin Malone','Accountant','8'),
('11', 'Andy Bernard', 'Sales Representative','3')
;

-- Join Table to see Direct Supervisor
SELECT s.Employee AS Supervisor, e.Employee 
FROM Dunder_Mifflin s 
JOIN Dunder_Mifflin e
ON s.Employee_ID = e.Supervisor
;