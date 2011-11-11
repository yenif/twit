require 'spec_helper'

describe User do
  it "should be create" do
    User.create!(email: 'test@example.com', password: 'abc123')
    User.count.should == 1
  end
end
