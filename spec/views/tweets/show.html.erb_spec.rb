require 'spec_helper'

describe "tweets/show.html.erb" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :message => "Message",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Message/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
