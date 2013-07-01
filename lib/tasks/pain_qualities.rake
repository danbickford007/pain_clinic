namespace :pain_qualities do
  task :import => :environment do 
    PainQuality.find_or_create_by_description('aching')
    PainQuality.find_or_create_by_description('throbbing')
    PainQuality.find_or_create_by_description('shooting')
    PainQuality.find_or_create_by_description('stabbing')
    PainQuality.find_or_create_by_description('gnawing')
    PainQuality.find_or_create_by_description('sharp')
    PainQuality.find_or_create_by_description('tender')
    PainQuality.find_or_create_by_description('burning')
    PainQuality.find_or_create_by_description('exhausting')
    PainQuality.find_or_create_by_description('penetrating')
    PainQuality.find_or_create_by_description('nagging')
    PainQuality.find_or_create_by_description('numb')
    PainQuality.find_or_create_by_description('miserable')
    PainQuality.find_or_create_by_description('mild')
    PainQuality.find_or_create_by_description('severe')
    PainQuality.find_or_create_by_description('other')
  end
end

