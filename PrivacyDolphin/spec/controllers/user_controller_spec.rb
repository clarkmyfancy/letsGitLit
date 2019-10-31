require 'rspec/autorun'
require 'rails_helper'
require 'spec_helper'

RSpec.describe UserController do
  describe "GET request" do
    it "assigns @users" do
      user = User.create
      get :request
      expect(assigns(:users)).to eq([user])
    end

    it "renders the request template" do
      get :request
      expect(response).to render_template("request")
    end
  end
end
