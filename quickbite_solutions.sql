-- QuickBite MySQL Challenge
-- Kiran Academy homework

-- setting up the database and table
create database if not exists quickbite;
use quickbite;

drop table if exists restaurants;

create table restaurants (
    restaurant_id int primary key,
    restaurant_name varchar(100),
    cuisine varchar(50),
    city varchar(50),
    rating double,
    avg_order_value double,
    orders_count int,
    delivery_fee double,
    est_delivery_time int,   -- in minutes
    owner_name varchar(100),
    brand varchar(100)
);

-- inserting the 30 records given in the PDF
insert into restaurants values
(101, 'Spice Route', 'North Indian', 'Pune', 4.5, 420, 18500, 39, 32, 'Amit Sharma', 'Spice Route'),
(102, 'South Tiffin House', 'South Indian', 'Pune', 4.3, 260, 14300, 29, 25, 'Priya Nair', 'South Tiffin'),
(103, 'Mumbai Zaika', 'Maharashtrian', 'Mumbai', 4.1, 350, 22000, 49, 38, 'Rohit Patil', 'Zaika Foods'),
(104, 'Burger Garage', 'Fast Food', 'Pune', 4.4, 310, 27500, 29, 30, 'Neha Joshi', 'Burger Garage'),
(105, 'Pizza Planet', 'Italian', 'Mumbai', 4.6, 520, 31000, 19, 35, 'Vikas Mehta', 'Pizza Planet'),
(106, 'Biryani Junction', 'Biryani', 'Hyderabad', 4.7, 480, 42000, 29, 40, 'Arjun Reddy', 'Biryani Junction'),
(107, 'Chai & Snacks', 'Cafe', 'Pune', 4.2, 180, 19500, 19, 22, 'Sneha Kulkarni', 'Chai & Snacks'),
(108, 'Royal Thali', 'North Indian', 'Delhi', 4.0, 390, 16800, 39, 42, 'Manish Gupta', 'Royal Thali'),
(109, 'Tandoori Tales', 'Mughlai', 'Delhi', 4.5, 610, 12100, 59, 45, 'Karan Singh', 'Tandoori Tales'),
(110, 'Coastal Curry', 'Seafood', 'Goa', 4.6, 750, 9800, 69, 48, 'Riya Fernandes', 'Coastal Curry'),
(111, 'Green Bowl', 'Healthy', 'Bengaluru', 4.3, 330, 11600, 39, 28, 'Ananya Rao', 'Green Bowl'),
(112, 'Dosa Factory', 'South Indian', 'Bengaluru', 4.5, 240, 27800, 19, 24, 'Suresh Kumar', 'Dosa Factory'),
(113, 'Punjabi Dhaba', 'Punjabi', 'Chandigarh', 4.1, 370, 13200, 49, 40, 'Gurpreet Singh', 'Punjabi Dhaba'),
(114, 'The Wok House', 'Chinese', 'Pune', 4.4, 450, 18400, 39, 36, 'Rahul Jain', 'Wok House'),
(115, 'Sushi Street', 'Japanese', 'Mumbai', 4.8, 920, 7600, 89, 50, 'Meera Shah', 'Sushi Street'),
(116, 'Cafe Mocha', 'Cafe', 'Pune', 4.2, 290, 15400, 29, 27, 'Ishita Deshmukh', 'Cafe Mocha'),
(117, 'Street Tadka', 'Indian', 'Nagpur', 3.9, 220, 10200, 19, 35, 'Akash Verma', 'Street Tadka'),
(118, 'Hyderabadi House', 'Biryani', 'Hyderabad', 4.6, 430, 35500, 29, 37, 'Faizan Ali', 'Hyderabadi House'),
(119, 'Pasta Palace', 'Italian', 'Bengaluru', 4.5, 560, 10900, 49, 41, 'Nikhil Rao', 'Pasta Palace'),
(120, 'Sweet Cravings', 'Desserts', 'Pune', 4.7, 280, 20500, 19, 26, 'Pooja Patil', 'Sweet Cravings'),
(121, 'Kebab Kingdom', 'Mughlai', 'Delhi', 4.4, 530, 14100, 59, 44, 'Sameer Khan', 'Kebab Kingdom'),
(122, 'Taco Town', 'Mexican', 'Mumbai', 4.2, 460, 8700, 49, 39, 'Kabir Malhotra', 'Taco Town'),
(123, 'Farm Fresh', 'Healthy', 'Pune', 4.6, 390, 12500, 29, 30, 'Rohan Kulkarni', 'Farm Fresh'),
(124, 'Midnight Bites', 'Fast Food', 'Pune', 4.0, 250, 24800, 39, 34, 'Tanvi Shah', 'Midnight Bites'),
(125, 'Kolkata Kitchen', 'Bengali', 'Kolkata', 4.3, 340, 11400, 39, 43, 'Soham Sen', 'Kolkata Kitchen'),
(126, 'Kerala Cafe', 'South Indian', 'Kochi', 4.5, 310, 12700, 29, 31, 'Akhil Menon', 'Kerala Cafe'),
(127, 'Royal Rajputana', 'Rajasthani', 'Jaipur', 4.7, 470, 9200, 49, 46, 'Vivek Rathore', 'Rajputana Foods'),
(128, 'Namma Meals', 'South Indian', 'Bengaluru', 4.4, 275, 23900, 19, 27, 'Kavya Shetty', 'Namma Meals'),
(129, 'Lassi Lab', 'Beverages', 'Pune', 4.1, 160, 18200, 19, 21, 'Dev Malhotra', 'Lassi Lab'),
(130, 'Flame & Grill', 'BBQ', 'Mumbai', 4.8, 880, 8300, 79, 52, 'Aditya Kapoor', 'Flame & Grill');

-- checking if all rows went in (should be 30)
select count(*) from restaurants;


-- ------------------------------
-- LEVEL 1 - Food Detective
-- ------------------------------

-- task 1: rating greater than 4.5
select * from restaurants
where rating > 4.5;

-- task 2: avg order value less than 300
select * from restaurants
where avg_order_value < 300;

-- task 3: restaurants in pune
select * from restaurants
where city = 'Pune';

-- task 4: more than 20000 orders
select * from restaurants
where orders_count > 20000;

-- task 5: delivery time more than 40 min
select * from restaurants
where est_delivery_time > 40;

-- task 6: rating between 4.2 and 4.7
-- (between includes both 4.2 and 4.7)
select * from restaurants
where rating between 4.2 and 4.7;

-- task 7: south indian, italian or biryani
select * from restaurants
where cuisine in ('South Indian', 'Italian', 'Biryani');

-- task 8: owner name has 'Patil' in it
select * from restaurants
where owner_name like '%Patil%';

-- task 9: brand is same as restaurant name
select * from restaurants
where brand = restaurant_name;

-- task 10: delivery fee less than 30
select * from restaurants
where delivery_fee < 30;


-- ------------------------------
-- LEVEL 2 - Recommendation Team
-- ------------------------------

-- task 11: top 5 by orders
select * from restaurants
order by orders_count desc
limit 5;

-- task 12: 5 lowest avg order value
select * from restaurants
order by avg_order_value asc
limit 5;

-- task 13: highest rating to lowest
select * from restaurants
order by rating desc;

-- task 14: unique cuisines
select distinct cuisine from restaurants;

-- task 15: using aliases
select restaurant_name as Restaurant_Name,
       rating as Customer_Rating
from restaurants;

-- task 16: only name, owner and brand
select restaurant_name, owner_name, brand
from restaurants;

-- task 17: city first, then rating high to low
select * from restaurants
order by city, rating desc;

-- task 18: top 5 rated restaurants that have more than 10000 orders
select * from restaurants
where orders_count > 10000
order by rating desc
limit 5;

-- task 19: 3 most ordered in pune
select * from restaurants
where city = 'Pune'
order by orders_count desc
limit 3;

-- task 20: 5 highest delivery fee
select * from restaurants
order by delivery_fee desc
limit 5;


-- ------------------------------
-- LEVEL 3 - Hidden Restaurants (LIKE)
-- ------------------------------

-- task 21: name starts with S
select * from restaurants
where restaurant_name like 'S%';

-- task 22: name ends with House
select * from restaurants
where restaurant_name like '%House';

-- task 23: name has Cafe in it
select * from restaurants
where restaurant_name like '%Cafe%';

-- task 24: cuisine has Indian in it
select * from restaurants
where cuisine like '%Indian%';

-- task 25: name with exactly 5 characters
-- each _ means one character
-- note: no restaurant name has exactly 5 characters so this gives empty result
select * from restaurants
where restaurant_name like '_____';

-- task 26: owner name contains Raj
-- note: this also gives empty result, no owner has Raj in the name
select * from restaurants
where owner_name like '%Raj%';

-- task 27: brand contains Foods
select * from restaurants
where brand like '%Foods%';

-- task 28: city starts with P
select * from restaurants
where city like 'P%';


-- ------------------------------
-- LEVEL 4 - Business Team
-- ------------------------------

-- task 29: avg order value > 400 and rating > 4.5
select * from restaurants
where avg_order_value > 400 and rating > 4.5;

-- task 30: orders > 20000 or rating > 4.7
select * from restaurants
where orders_count > 20000 or rating > 4.7;

-- task 31: not in pune
select * from restaurants
where not city = 'Pune';

-- task 32: delivery time between 25 and 40
select * from restaurants
where est_delivery_time between 25 and 40;

-- task 33: avg order value between 300 and 600
select * from restaurants
where avg_order_value between 300 and 600;

-- task 34: pune or mumbai
select * from restaurants
where city = 'Pune' or city = 'Mumbai';

-- task 35: fast food with more than 20000 orders
select * from restaurants
where cuisine = 'Fast Food' and orders_count > 20000;

-- task 36: rating > 4.5 and delivery fee below 40
select * from restaurants
where rating > 4.5 and delivery_fee < 40;

-- task 37: bengaluru and more than 10000 orders
select * from restaurants
where city = 'Bengaluru' and orders_count > 10000;

-- task 38: owner is not Rahul Jain
select * from restaurants
where owner_name != 'Rahul Jain';


-- ------------------------------
-- LEVEL 5 - Boss Challenges
-- ------------------------------

-- challenge 1 (hidden gem): rating above 4.5 but less than 10000 orders
select * from restaurants
where rating > 4.5 and orders_count < 10000;

-- challenge 2 (cheap and popular): avg order value below 300, orders above 20000
select * from restaurants
where avg_order_value < 300 and orders_count > 20000;

-- challenge 3 (fast delivery): delivery time below 30 and rating above 4.3
select * from restaurants
where est_delivery_time < 30 and rating > 4.3;

-- challenge 4 (trending): top 3 most ordered in mumbai
select * from restaurants
where city = 'Mumbai'
order by orders_count desc
limit 3;

-- challenge 5 (premium): avg order value more than the average of all restaurants
-- first the inner query finds the average, then the outer query compares with it
select * from restaurants
where avg_order_value > (select avg(avg_order_value) from restaurants);

-- challenge 6 (city spotlight): all pune restaurants, most orders first
select * from restaurants
where city = 'Pune'
order by orders_count desc;

-- challenge 7 (cuisine report): south indian restaurants
select restaurant_name, city, rating, avg_order_value
from restaurants
where cuisine = 'South Indian';

-- challenge 8 (high value partners): avg order value above 500 and rating at least 4.5
select * from restaurants
where avg_order_value > 500 and rating >= 4.5;


-- ------------------------------
-- FINAL BOSS - CEO Challenge
-- ------------------------------
-- best partners: rating > 4.4, orders > 10000, avg order value 300 to 700
-- sorted by orders (highest first) and only top 5
select restaurant_name, cuisine, city, rating, avg_order_value,
       orders_count, delivery_fee, owner_name, brand
from restaurants
where rating > 4.4
  and orders_count > 10000
  and avg_order_value between 300 and 700
order by orders_count desc
limit 5;
