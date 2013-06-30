require 'factory_girl'

FactoryGirl.define do
    factory :patient do
      first_name 'dan'
      last_name 'bigs'
      email 'bigs@yahoo.com'
      gender 1
      height '100'
      weight '100'
      ssn '111111111'
      marital_status 'single'
      dob { 21.years.ago }
    end
end
