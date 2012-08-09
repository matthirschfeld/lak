require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :nick => "Nick",
        :email => "Email",
        :user_link => "User Link",
        :alliance => "Alliance",
        :alliance_link => "Alliance Link",
        :alliance_status => "Alliance Status"
      ),
      stub_model(User,
        :nick => "Nick",
        :email => "Email",
        :user_link => "User Link",
        :alliance => "Alliance",
        :alliance_link => "Alliance Link",
        :alliance_status => "Alliance Status"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nick".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "User Link".to_s, :count => 2
    assert_select "tr>td", :text => "Alliance".to_s, :count => 2
    assert_select "tr>td", :text => "Alliance Link".to_s, :count => 2
    assert_select "tr>td", :text => "Alliance Status".to_s, :count => 2
  end
end
