require 'rspec/autorun'
require 'rails_helper'
require 'spec_helper'

describe UserController do
  it "works" do
    post :create, params: { foo: :bar }
  end
end
