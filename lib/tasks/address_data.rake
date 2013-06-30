task :address_data => :environment do

Address.create(:addr_one=>'123 Right Way',:addr_two=>'suite XX',:city=>'Homerville',:state=>'FL',:zip=>'33333',:patient_id=>'1')
Address.create(:addr_one=>'1499 W. Lamplighter St',:addr_two=>'apt X',:city=>'Citrus Springs',:state=>'FL',:zip=>'33334',:patient_id=>'2')
Address.create(:addr_one=>'Essex Ln',:city=>'Ocala',:state=>'NY',:zip=>'31167',:patient_id=>'3')
Address.create(:addr_one=>'9794 W Gardners Ln',:addr_two=>'suite 222',:city=>'Spring Hill',:state=>'GA',:zip=>'32323',:patient_id=>'4')

end
