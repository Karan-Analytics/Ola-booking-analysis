use ola;
show tables;
select count(*) from bookings;
select * from booking; 
show columns from bookings;
alter table bookings modify Time time ;
describe bookings;
select * from bookings; 
select * from bookings limit 1000;
select * from bookings limit 10;
  #1. Retrive all successful Bookings?
select * from bookings where Booking_Status ='Success';
create view Successful_Bookings as
select * from bookings where Booking_Status ='Success';
select * from Successful_Bookings;
  #2. Find the Average ride distance for each vehicle type:
select Vehicle_Type,avg(Ride_Distance)as avg_Distance from bookings Group by Vehicle_Type;
create view Ride_distance_for_each_vehicle as
select Vehicle_Type,avg(Ride_Distance)as avg_Distance from bookings Group by Vehicle_Type;
select * from Ride_distance_for_each_vehicle;   
  #3. Get the total number of cancelled rides by coustomers:
select count(*) from bookings where Booking_Status = 'Canceled by Customer';
create view cancelled_rides_by_coustomer as
select count(*) from bookings where Booking_Status = 'Canceled by Customer';
select * from cancelled_rides_by_coustomer;
 #4.list the top 5 coustomers who booked the highest numbers of rides: 
select Customer_ID,count(Booking_ID) as total_rides from bookings group by Customer_ID order by total_rides desc limit 5;
 create view top_5_coustomers as
select Customer_ID,count(Booking_ID) as total_rides from bookings group by Customer_ID order by total_rides desc limit 5; 
select * from top_5_coustomers ;
  #5.Get  the number of rides canceled  by  drivers due to personal and car related issue
select count(*) from bookings where Canceled_Rides_by_Driver = 'Personal & Car related issue';
create view rides_canceled_by_drivers_due_to_p_c_issue as
select count(*) from bookings where Canceled_Rides_by_Driver = 'Personal & Car related issue';
select * from rides_canceled_by_drivers_due_to_p_c_issue;
   #6. Find the maximum and minimum driver ratings for prime sedan bookings :
   select max(Driver_Ratings) as max_rating,min(Driver_Ratings)as min_rating from bookings where Vehicle_Type = 'Prime Sedan';
   create view max_min_driver_rating as
select max (Driver_Ratings) as max_rating,min(Driver_Ratings)as min_rating from bookings where Vehicle_Type = 'Prime Sedan';
select * from max_min_driver_rating ;
  #7.Retirive all rides where payment was made using upi;
select * from bookings where Payment_Method ='UPI';
create view payment_was_made_using_upi as
select * from bookings where Payment_Method ='UPI';
select * from payment_was_made_using_upi;

  #8 find the average cusotmer rating per vehicle type :
  select Vehicle_type , avg(Customer_Rating) as avg_rating from bookings group by Vehicle_Type;
create view customer_rating_per_vehicle_type as
select Vehicle_type , avg(Customer_Rating) as avg_rating from bookings group by Vehicle_Type;
select * from customer_rating_per_vehicle_type ;
  #9.calculate the total bookings value of rides completed successfully :
select count(Booking_ID)as total_successful_value from bookings where Booking_Status = 'Success';
create view total_booking_values_of_successful_rides as
select count(Booking_ID)as total_successful_value from bookings where Booking_Status = 'Success';
select * from total_booking_values_of_successful_rides;
  #10.list all incomplete rides along with the reason ;
select Booking_ID , Incomplete_Rides_Reason from bookings where Incomplete_Rides ='Yes';
  create view incomeplete_rides_with_reason as 
select Booking_ID , Incomplete_Rides_Reason from bookings where Incomplete_Rides ='Yes';
select * from incomeplete_rides_with_reason;






  


  





