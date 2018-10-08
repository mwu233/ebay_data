select count(distinct(C.Category))
from Category C, Bid B
where C.ItemID = B.ItemID and B.Amount > 100;
