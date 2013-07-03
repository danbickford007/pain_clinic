require 'spec_helper'

describe "patient_histories/index" do
  before(:each) do
    assign(:patient_histories, [
      stub_model(PatientHistory,
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
      ),
      stub_model(PatientHistory,
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
      )
    ])
  end

  it "renders a list of patient_histories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
