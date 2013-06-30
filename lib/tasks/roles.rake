namespace :roles do
  task :import => :environment do 
    user = User.create(:email=>'none@none.com', :passcode=>'password')
    Role.create(:description=>'admin', :user_id=>user.id)
  end
end

