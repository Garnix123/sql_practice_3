# 🚗 SQL Practice – Primary & Foreign Keys with Vehicle and Owner Tables

## 📘 Overview
This practice focuses on creating relational tables using **primary keys** and **foreign keys** to model real-world entities—like vehicles and their owners—inside a MySQL database.

---

## 🛠 Schema Setup
- **Database:** `automobiles`
- **Tables Created:**
  - `Vehicle`
  - `Owner`

---

## 🧩 Key Concepts
- Defined **primary keys** for both `VehicleID` and `OwnerID`.
- Linked tables using a **foreign key**:  
  `Vehicle.OwnerID → Owner.OwnerID`

---

## 🔎 SQL Highlights
```sql
CREATE TABLE Vehicle (
    VehicleID VARCHAR(10),
    OwnerID VARCHAR(10),
    PlateNumber VARCHAR(10),
    PhoneNumber INT,
    PRIMARY KEY (VehicleID)
);

CREATE TABLE Owner (
    OwnerID VARCHAR(10),
    OwnerName VARCHAR(50),
    OwnerAddress VARCHAR(255),
    PRIMARY KEY (OwnerID)
);

ALTER TABLE Vehicle
ADD FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID);
