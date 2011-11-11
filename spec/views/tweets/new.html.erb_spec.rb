require 'spec_helper'

describe "tweets/new.html.erb" do
  before(:each) do
    assign(:tweet, stub_model(Tweet,
      :message => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tweets_path, :method => "post" do
      assert_select "input#tweet_message", :name => "tweet[message]"
      assert_select "input#tweet_user_id", :name => "tweet[user_id]"
    end
  end
end
