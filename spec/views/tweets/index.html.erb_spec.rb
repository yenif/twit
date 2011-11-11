require 'spec_helper'

describe "tweets/index.html.erb" do
  before(:each) do
    @user = User.new(email: 'test@example.com', password: 'abc123')
    assign(:tweets, [
      stub_model(Tweet,
        :message => "Message",
        :user => @user
      ),
      stub_model(Tweet,
        :message => "Message",
        :user => @user
      )
    ])
  end

  it "renders a list of tweets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => @user.email, :count => 2
  end
end
