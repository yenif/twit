require 'spec_helper'

describe "tweets/show.html.erb" do
  before(:each) do
    @user = User.new(email: 'test@example.com', password: 'abc123')
    @tweet = assign(:tweet, stub_model(Tweet,
      :message => "Message",
      :user => @user
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Message/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/test@example.com/)
  end
end
