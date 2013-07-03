require 'spec_helper'

describe "patient_histories/new" do
  before(:each) do
    assign(:patient_history, stub_model(PatientHistory,
      :alcohol => false,
      :drinks_per_day => 1,
      :years_been_drnking => 1,
      :smoking => false,
      :packs_per_day => 1,
      :years_been_smoking => 1,
      :illicit_drugs => "MyText",
      :religion => "MyText",
      :sibling_description => "MyText",
      :surgical_history => "MyText",
      :medical_history => "MyText",
      :allergies => false,
      :allergy_description => "MyText"
    ).as_new_record)
  end

  it "renders new patient_history form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", patient_histories_path, "post" do
      assert_select "input#patient_history_alcohol[name=?]", "patient_history[alcohol]"
      assert_select "input#patient_history_drinks_per_day[name=?]", "patient_history[drinks_per_day]"
      assert_select "input#patient_history_years_been_drnking[name=?]", "patient_history[years_been_drnking]"
      assert_select "input#patient_history_smoking[name=?]", "patient_history[smoking]"
      assert_select "input#patient_history_packs_per_day[name=?]", "patient_history[packs_per_day]"
      assert_select "input#patient_history_years_been_smoking[name=?]", "patient_history[years_been_smoking]"
      assert_select "textarea#patient_history_illicit_drugs[name=?]", "patient_history[illicit_drugs]"
      assert_select "textarea#patient_history_religion[name=?]", "patient_history[religion]"
      assert_select "textarea#patient_history_sibling_description[name=?]", "patient_history[sibling_description]"
      assert_select "textarea#patient_history_surgical_history[name=?]", "patient_history[surgical_history]"
      assert_select "textarea#patient_history_medical_history[name=?]", "patient_history[medical_history]"
      assert_select "input#patient_history_allergies[name=?]", "patient_history[allergies]"
      assert_select "textarea#patient_history_allergy_description[name=?]", "patient_history[allergy_description]"
    end
  end
end
