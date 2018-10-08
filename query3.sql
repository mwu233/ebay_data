Select count(*) from 
(select count(Category) AS CountCate from Category group by ItemID) as T1 
where T1.CountCate = 4;