-- Write a command that deletes the following data from the data set:
-- Section1: All users whose last name contains neither m nor
delete from users where family not like '%d%' and family not like '%m%';
-- Section2: Information about all users with the last name mohammadi or Salary equal to 7356, 9701, 2885, 7414 or 3801
delete from users where family = 'mohammadi' or salary = 7356 or salary = 9701
or salary = 2885 or salary = 7414 or salary = 3801;
-- Section3: Information about all users with the last name booazar or a birth year between 1995 and 2000 (from the beginning of 1995 to the end of 2000)
delete from users where birth_date between '1995-01-01' and '2000-12-30' or family = 'booazar';