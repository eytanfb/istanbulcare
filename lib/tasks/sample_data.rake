namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    
    99.times do |n|      
      first_name  = Faker­::Name.first_name
      last_name  = Faker­::Name.last_name
      email = Faker::Internet.email
      phone  = Faker::PhoneNumber.phone_number
      tc_no = 10000000000+rand(9999999999)
      specialization = ["pediatri","kardiyoloji","kulak burun bogaz","radyoloji","uroloji","jinekoloji","noroloji","onkoloji","ortopedi"].sample
      password = "password"
      Patient.create!(tc_no: tc_no,
                      first_name: first_name,
                      last_name: last_name,
                      email: email,
                      phone: phone,
                      password: password,
                      password_confirmation: password)
      Doctor.create!( tc_no: tc_no,
                      first_name: first_name,
                      last_name: last_name,
                      email: email,
                      phone: phone,
                      specialization: specialization,
                      password: password,
                      password_confirmation: password)                
    end
  end
end