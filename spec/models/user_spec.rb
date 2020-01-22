require 'rails_helper'

describe User do
  it { should have_many(:questions) }
  it { should have_many(:answers) }
  it { should have_many(:comments) }
  it "Should encrypt a password and allow for retreval of the same user" do
    user = User.new({:name => 'name', :password => 'This_is_it!123', :email => 't@t.com'})
    user.save
    test_user = User.authenticate('t@t.com', 'This_is_it!123')
    expect(user).to(eq(test_user))
  end

end
