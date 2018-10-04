SELECT COUNT(DISTINCT UserID) From AuctionUser, Item, Bid WHERE AuctionUser.UserID = Item.Seller AND AuctionUser.UserID = Bid.Bidder;
