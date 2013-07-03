require 'spec_helper'

describe "patient_histories/show" do
  before(:each) do
    @patient_history = assign(:patient_history, stub_model(PatientHistory,
      :alcohol => false,
      :drinks_per_day => 1,
      :years_been_drnking => 2,
      :smoking => false,
      :packs_per_day => 3,
      :years_been_smoking => 4,
      :illicit_drugs => "MyText",
      :religion => "MyText",
      :sibling_description => "MyText",
      :surgical_history => "MyText",
      :medical_history => "MyText",
      :allergies => false,
      :allergy_description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
  end
end
