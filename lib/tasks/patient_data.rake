task :patient_data => :environment do

Patient.create(:last_name=>'Dickford',:first_name=>'DannyBoy',:middle_initial=>'D',:email=>'Ismell@yahoo.com',:gender=>'F',:height=>'5',
:weight=>'225', :ssn=>'111111111',:marital_status=>'married',:dob=>'1977-12-20')
Patient.create(:last_name=>'Wilma',:first_name=>'Jonsey',:middle_initial=>'T',:email=>'IamBeautiful@yahoo.com',:gender=>'M',:height=>'6',
:weight=>'225', :ssn=>'123411111',:marital_status=>'married',:dob=>'1977-01-20')
Patient.create(:last_name=>'Collins',:first_name=>'Phil',:middle_initial=>'P',:email=>'IamOOld@yahoo.com',:gender=>'M',:height=>'2',
:weight=>'125', :ssn=>'111189031',:marital_status=>'gay',:dob=>'1977-03-07')
Patient.create(:last_name=>'Fred',:first_name=>'Flinstone',:middle_initial=>'W',:email=>'IamNotonTv@yahoo.com',:gender=>'M',:height=>'9',
:weight=>'425', :ssn=>'485858588',:marital_status=>'married',:dob=>'1957-01-05')

end
