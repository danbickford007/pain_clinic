require 'spec_helper'

describe "user_permissions/show" do
  before(:each) do
    @user_permission = assign(:user_permission, stub_model(UserPermission,
      :description => "Description",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/1/)
  end
end
