require 'rspec/autorun'
require 'rails_helper'
require 'spec_helper'

RSpec.describe User, :type => :model do
  
  before(:all) do
    @user1 = create(:user)
  end
  
  it "is valid with valid attributes" do
    expect(@user1).to be_valid
  end
  
  it "has a unique username" do
    user2 = build(:user, email: "joe@tamu.edu")
    expect(user2).to_not be_valid
  end
  
  it "has a unique email" do
    user2 = build(:user, name: "Joe Smith")
    expect(user2).to_not be_valid
  end
  
  it "has a unique uin" do
      user2 = build(:user, name: "Joe Smith")
      expect(user2).to_not be_valid
  end
  
  it "is not valid without a password" do 
    user2 = build(:user, password: nil)
    expect(user2).to_not be_valid
  end
  
  it "is not valid without a username" do 
    user2 = build(:user, name: nil)
    expect(user2).to_not be_valid
  end
  
  it "is not valid without an email" do
    user2 = build(:user, email: nil)
    expect(user2).to_not be_valid
  end
  
  it "is not valid without a uin" do
    user2 = build(:user, uin: nil)
    expect(user2).to_not be_valid
  end
  
  it "is not valid without a degree" do
    user2 = build(:user, degree: nil)
    expect(user2).to_not be_valid
  end
  
  it "is not valid without a classyear" do
    user2 = build(:user, classyear: nil)
    expect(user2).to_not be_valid
  end
end
