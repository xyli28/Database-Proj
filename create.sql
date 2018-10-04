drop table if exists Item;
drop table if exists Category;
drop table if exists AuctionUser;
drop table if exists Bid;

CREATE TABLE Items(
    ItemID INTEGER PRIMARY KEY,
    Name TEXT,
    Currently REAL,
    Buy_Price REAL,
    FIRST_Bid REAL,
    Number_of_Bids INTEGER,
    Started TEXT,
    ENDs TEXT,
    Seller TEXT,
    Description TEXT,
    FOREIGN KEY (Seller) REFERENCES
    AuctionUser(UserID));

CREATE TABLE Category(
    Item INTEGER,
    Category TEXT,
    FOREIGN KEY (Item) REFERENCES
    Item(ItemID));

CREATE TABLE AuctionUser(
    UserID TEXT PRIMARY KEY,
    Rating REAL,
    Location TEXT,
    Country TEXT);

CREATE TABLE Bid(
    Item INTEGER,
    Bidder TEXT,
    Time TEXT,
    Amount REAL,
    FOREIGN KEY (Item) REFERENCES
    Item(ItemID)
    FOREIGN KEY (Bidder) REFERENCES
    AuctionUser(UserID));
    
    
