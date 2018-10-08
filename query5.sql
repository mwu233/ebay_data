select count(*) 
from AuctionUser
where Rating > 1000 and UserID in (select distinct(SellerID) from Items);
