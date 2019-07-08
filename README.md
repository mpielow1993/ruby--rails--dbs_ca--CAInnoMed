# README

README  

  

  

## Table of contents  

* [General info](#general-info)  

* [Technologies](#technologies)  

* [Setup](#setup)  

*[Site Usage](#site-usage)  

*[Contact Details](#contact-details) 

  

## General info  

This project is a simple online consultation facility for people to have interaction with different types of medical practitioners. 
There is the ability or chat, upload images, send and receive prescriptions, and pay for payments online.   

  

## Technologies  

Project is created with:  

* Ruby on Rails version: ruby -2.6.3 

* Bootstrap version : v4 

* Stipe integrated payments 

  

## Setup  

To run this project, use AWS Cloud 9:  

Clone from Github Repo:  https://github.com/emilybowe/CAInnoMed  
  

$ cd CAInnoMed  

$ bundle Install 

$ rake db:seed  

$ rails server 

  

## Using the Site  

Logging in as an Admin:  

Once the site has been accessed the user should log in with the predefined Doctor/Admin username "Emily@mail.com" and password  "sectretpw" - 
we have chosen to do this as a Doctor will need to be manually authorized to use the site.   

When logged in as a doctor they can view their diary and edit consultations and write and assign perscriptions.  

  

To Sign up/Sign in as a user:  

Use the button in the top right corner of the site and provide the required details.  

 

See Consultations & Prescriptions: 

A user on the top bar can view their prescriptions and any previous appointments that they have had or has been given to them by the doctor.  

  

Booking and Appointment: 

When a user logs in they will see a screen that has any previous and upcoming appointments that they any have. They are presented with the Option to book an appointment.
They user will select the Doctor from the list, a time and date that is in the future. Once the appointment has been booked they will be brought to the payment function
to prepay with Stripe - see details on how to use stripe below.  

  

Payment Function: 

The integrated payment function for our site is Stripe and we have integrated a test account - to complete the booking process with a test card you can use card 
4242 4242 4242 4242 wit exp date 4242 and Zip Code 42424 

  

Chat function: 

The chat function is so patient can have consultations with their doctors and also upload images to the chat for diagnosis by the doctor. 
Only images files will be allowed to be submitted   

 

## Contact Details 

The authors of this site are listed below along with contact details: 

  

Bell, Michael,  10387336@mydbs.ie  

Bowe, Emily,  10389679@mydbs.ie  

Pielow, Michael,  10391669@mydbs.ie  

Watson, Avril, 10392723@mydbs.ie 

