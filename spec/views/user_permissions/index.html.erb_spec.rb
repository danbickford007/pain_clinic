require 'spec_helper'

describe "user_permissions/index" do
  before(:each) do
    assign(:user_permissions, [
      stub_model(UserPermission,
        :description => "Description",
        :user_id => 1
      ),
      stub_model(UserPermission,
        :description => "Description",
        :user_id => 1
      )
    ])
  end

  it "renders a list of user_permissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
