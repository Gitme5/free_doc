# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

speciality = ["Généraliste", "Podologue", "Pédiatre", "Cardiologue"]
cities = ["Paris","Strasbourg","Marseille","Nantes","Lyon","Grenoble","Bordeaux"]


#Filling up the cities table with all possible entires.
cities.each do |city|
	c = City.create(city_name: city)
end

#Filling up the cities table with all possible entires.
speciality.each do |speciality|
	s = Speciality.create(speciality: speciality)
end

#Filling up the doctor table with Fake 20 entries
20.times do 
	#Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: speciality[rand(0..3)], zip_code: Faker::Address.postcode)
	d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.postcode, speciality_id: rand(0..3))
end

#Filling up the patient table with Fake 50 entries
50.times do
	p = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#Filling up the appointment table with Fake date and links to other tables
200.times do
	a = Appointment.create(date: Faker::Date.forward(days: 100),doctor_id: rand(1..20), patient_id: rand(1..50), city_id: rand(1..6))
end






