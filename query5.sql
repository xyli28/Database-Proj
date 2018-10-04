SELECT COUNT(DISTINCT AuctionUser.UserID) From AuctionUser, Item WHERE AuctionUser.Rating > 1000 AND AuctionUser.UserID = Item.Seller;
