require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :nick => "MyString",
      :email => "MyString",
      :user_link => "MyString",
      :alliance => "MyString",
      :alliance_link => "MyString",
      :alliance_status => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_nick", :name => "user[nick]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_user_link", :name => "user[user_link]"
      assert_select "input#user_alliance", :name => "user[alliance]"
      assert_select "input#user_alliance_link", :name => "user[alliance_link]"
      assert_select "input#user_alliance_status", :name => "user[alliance_status]"
    end
  end
end
