namespace :db do
  desc "Fill db with sample data"
  task populate: :environment do
    99.times do
      first_name = Faker::Name.first_name
      last_name = Faker::Name.last_name
      email = Faker::Internet.email
      phone = (rand(50)+500).to_s + " " +(rand(899)+100).to_s + " " + rand(9999).to_s
      tc_no = 10000000000+rand(9999999999)
      specialization = ["pediatri", "kardiyoloji", "kulak burun bogaz", "radyoloji", "uroloji", "jinekoloji", "noroloji", "onkoloji", "ortopedi"].sample.humanize
      password = "password"
      Patient.create!(tc_no: tc_no,
                      first_name: first_name,
                      last_name: last_name,
                      email: email,
                      phone: phone,
                      password: password,
                      password_confirmation: password)
      Doctor.create!(tc_no: tc_no,
                      first_name: first_name,
                      last_name: last_name,
                      email: email,
                      phone: phone,
                      specialization: specialization,
                      password: password,
                      password_confirmation: password)
    end
    
    20.times do
      doctor_id = rand(99)+1
      patient_id = rand(99)+1
      doctor = Doctor.find doctor_id
      patient = Patient.find patient_id
      prescription = doctor.prescriptions.create!(patient_id: patient_id)
      (rand(3)+1).times do
      name = ["sudafed", "benical", "augmentin", "aspirin", "viagra", "minoset", "bengay", "xanax"].sample.humanize
      notes = ["sabah ac karnina", "sabah tok karnina", "kahvaltidan sonra", "aksam yemeginden sonra 2 tane", "oglen tok karnina", "oglen ac karnina", "acikinca", "susayinca"].sample.humanize
      prescription.drugs.create!(name: name,
                   notes: notes)  
       end
    end
    
  end
end