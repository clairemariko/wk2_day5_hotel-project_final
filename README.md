# wk2_day5_hotel-project_final
practice using OO
Homework Hotel Project


Things I achieved:  Within the room class, my guests can check in and check out. 
Check in- I also make sure the room they are checking in to does not have anyone in it and is the right type of room for them. 
Check out- this also deletes the guest from my current guest list of that room. 

The hotel:
can tell its capacity of room and the daily rates. It can also state the total revenue and has a working till which starts at zero. The till increases when a guest is checked in. 

Problem I met:

Even though my code for check in and out works within the room class it doesn’t work within the hotel. Im still a bit confused about how much information should be where. I think this is because I couldn't clearly in mind define where the check in and out should be in. 

I started a reservation class. My thoughts were that the guest would input the date and this prompt the terminal to respond with a welcoming message. Further on I would like this to then link with the checking capacity etc function I have in my Room class. 

My room and guest spec pass all tests. My hotel did until I tried to add check in and out. it states arguments 3 for 0. but the hotel takes 3 arguments and I am not sure why it would think this would be zero?


What I would like to know:

I would like to go over how to tie things up nicely. for example after we built are classes, is it best practice to then just have a ‘functioning hotel’ class and from there how do you get it to interact with the terminal. 
