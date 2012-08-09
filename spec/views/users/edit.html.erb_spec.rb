require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :nick => "MyString",
      :email => "MyString",
      :user_link => "MyString",
      :alliance => "MyString",
      :alliance_link => "MyString",
      :alliance_status => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_nick", :name => "user[nick]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_user_link", :name => "user[user_link]"
      assert_select "input#user_alliance", :name => "user[alliance]"
      assert_select "input#user_alliance_link", :name => "user[alliance_link]"
      assert_select "input#user_alliance_status", :name => "user[alliance_status]"
    end
  end
end
