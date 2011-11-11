require 'spec_helper'

describe "tweets/edit.html.erb" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :message => "MyString"
    ))
  end

  it "renders the edit tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tweets_path(@tweet), :method => "post" do
      assert_select "input#tweet_message", :name => "tweet[message]"
    end
  end
end
