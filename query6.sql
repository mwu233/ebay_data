select count(*) 
from AuctionUser
where UserID in (select distinct(BidderID) from Bid) and UserID in (select distinct(SellerID) from Items);