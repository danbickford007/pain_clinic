namespace :status do 

  task :import => :environment do 
    Status.find_or_create_by_description('Waiting')
    Status.find_or_create_by_description('In Process')
  end

end
