# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admins / Doctors
emily = User.create!(email: "emily@mail.com", first_name: "Emily", surname: "Bowe", password: "secretpw", password_confirmation: "secretpw", is_doctor: true)
User.create!(email: "MichaelB@mail.com", first_name: "Michael", surname: "Bell", password: "secretpw", password_confirmation: "secretpw", is_doctor: true)
User.create!(email: "MichaleP@mail.com", first_name: "MichaelP", surname: "Pielow", password: "secretpw", password_confirmation: "secretpw", is_doctor: true)
User.create!(email: "Avril@mail.com", first_name: "Avril", surname: "Watson", password: "secretpw", password_confirmation: "secretpw", is_doctor: true)

# Users / Patients
alice = User.create!(email: "alice@mail.com", first_name: "Alice", surname: "Red", password: "secretpw", password_confirmation: "secretpw", is_doctor: false)
User.create!(email: "bob@mail.com", first_name: "Bob", surname: "Blue", password: "secretpw", password_confirmation: "secretpw", is_doctor: false)
User.create!(email: "claire@mail.com", first_name: "Claire", surname: "Green", password: "secretpw", password_confirmation: "secretpw", is_doctor: false)

# Appointment
Appointment.create(doctor: emily, patient: alice, time: "2020-12-30 12:00", paid: false, fee_amount: 65)