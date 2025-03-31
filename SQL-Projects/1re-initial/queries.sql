-- Section1
delete from users where family not like '%d%' and family not like '%m%';
-- Section2
delete from users where family = 'mohammadi' or salary = 7356 or salary = 9701
or salary = 2885 or salary = 7414 or salary = 3801;
-- Section3
delete from users where birth_date between '1995-01-01' and '2000-12-30' or family = 'booazar';