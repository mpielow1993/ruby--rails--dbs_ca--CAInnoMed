# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admins / Doctors
emily = User.create!(email: "emily@mail.com", first_name: "Emily", surname: "Bowe", password: "secretpw", password_confirmation: "secretpw", is_doctor: true)
User.create!(email: "richard@mail.com", first_name: "Richard", surname: "Condon", password: "secretpw", password_confirmation: "secretpw", is_doctor: true)
User.create!(email: "paul@mail.com", first_name: "Paul", surname: "Boland", password: "secretpw", password_confirmation: "secretpw", is_doctor: true)
User.create!(email: "mark@mail.com", first_name: "Mark", surname: "Sparky", password: "secretpw", password_confirmation: "secretpw", is_doctor: true)

# Users / Patients
alice = User.create!(email: "alice@mail.com", first_name: "Alice", surname: "Red", password: "secretpw", password_confirmation: "secretpw", is_doctor: false)
User.create!(email: "bob@mail.com", first_name: "Bob", surname: "Blue", password: "secretpw", password_confirmation: "secretpw", is_doctor: false)
User.create!(email: "claire@mail.com", first_name: "Claire", surname: "Green", password: "secretpw", password_confirmation: "secretpw", is_doctor: false)

# Appointment
Appointment.create(doctor: emily, patient: alice, time: "2020-12-30 12:00", paid: false, fee_amount: 65)