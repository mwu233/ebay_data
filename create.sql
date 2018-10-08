DROP TABLE if exists AuctionUser;
DROP TABLE if exists Items; 
DROP TABLE if exists Bid;
DROP TABLE if exists Category;

CREATE TABLE AuctionUser
(
  UserID VARCHAR NOT NULL,
  Rating INT NOT NULL,
  Location VARCHAR, 
  Country VARCHAR,
  PRIMARY KEY (UserID)
);

CREATE TABLE Items
(
  ItemID INT NOT NULL,
  Name VARCHAR NOT NULL,
  SellerID VARCHAR NOT NULL,
  Buy_Price FLOAT,
  First_Bid FLOAT NOT NULL,
  Started DATE NOT NULL,
  Ends DATE,
  Currently FLOAT NOT NULL,
  Number_of_Bids INT NOT NULL,
  Description VARCHAR,
  PRIMARY KEY (ItemID),
  FOREIGN KEY (SellerID) REFERENCES AuctionUser(UserID)
);

CREATE TABLE Bid
(
  Time DATE NOT NULL,
  Amount FLOAT NOT NULL,
  ItemID INT NOT NULL,
  BidderID VARCHAR NOT NULL,
  PRIMARY KEY (Time, BidderID, ItemID),
  FOREIGN KEY (BidderID) REFERENCES AuctionUser(UserID),
  FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

CREATE TABLE Category
(
  ItemID INT NOT NULL,
  Category VARCHAR NOT NULL,
  PRIMARY KEY (Category, ItemID),
  FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);