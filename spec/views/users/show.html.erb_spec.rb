require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :nick => "Nick",
      :email => "Email",
      :user_link => "User Link",
      :alliance => "Alliance",
      :alliance_link => "Alliance Link",
      :alliance_status => "Alliance Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nick/)
    rendered.should match(/Email/)
    rendered.should match(/User Link/)
    rendered.should match(/Alliance/)
    rendered.should match(/Alliance Link/)
    rendered.should match(/Alliance Status/)
  end
end
