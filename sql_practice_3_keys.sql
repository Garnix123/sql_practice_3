create database automobiles;
use automobiles;
create table vehicle (OwnerID VARCHAR(10), PlateNumber VARCHAR(10), PhoneNumber VARCHAR(10));
show columns in vehicle;
DROP TABLE vehicle;
CREATE TABLE Vehicle (
    VehicleID VARCHAR(10),
    OwnerID VARCHAR(10),
    PlateNumber VARCHAR(10),
    PhoneNumber INT,
    PRIMARY KEY (VehicleID)
);
show columns in Vehicle;

create table owner(
OwnerID VARCHAR(10),
OwnerName VARCHAR (50),
OwnerAddress VARCHAR (255),
PRIMARY KEY (OwnerID)
);

show tables;

show columns from Vehicle;
show columns from owner;

ALTER TABLE Vehicle ADD FOREIGN KEY (ownerID) REFERENCES owner (ownerID);
show columns in Vehicle;