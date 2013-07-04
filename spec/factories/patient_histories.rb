# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patient_history do
    alcohol false
    drinks_per_day 1
    years_been_drnking 1
    smoking false
    packs_per_day 1
    years_been_smoking 1
    illicit_drugs "MyText"
    religion "MyText"
    sibling_description "MyText"
    surgical_history "MyText"
    medical_history "MyText"
    allergies false
    allergy_description "MyText"
  end
end
